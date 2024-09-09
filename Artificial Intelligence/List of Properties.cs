using System;
using System.Data;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Artificial_Intelligence
{
    public partial class listOfProperties : Form
    {
        // Variables to store property IDs and current index
        private List<string> propertyIds = new List<string>();
        private int currentIndex = -1;
        public string Suburb { get; set; }
        public string Bedroom { get; set; }
        public float MaxPrice { get; set; }
        public string PropertyType { get; set; }
        public string Bathrooms { get; set; }

        private string connectionString = "Server=localhost;Database=gene;User ID=root;Password=;";

        public listOfProperties()
        {
            InitializeComponent();

            // Link button click events
            btnPrevious.Click += btnPrevious_Click;
            btnNext.Click += btnNext_Click;
            btnFirst.Click += btnFirst_Click;
            btnLast.Click += btnLast_Click;
        }

        private void listOfProperties_Load(object sender, EventArgs e)
        {
            CheckDatabaseConnection();
            FetchAndFilterProperties();
            property_list.CellClick += PropertyList_CellClick;
        }

        private void CheckDatabaseConnection()
        {
            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Failed to connect to the database: {ex.Message}", "Connection Status", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void FetchAndFilterProperties()
        {
            // Base query
            string query = "SELECT id, suburb, max_price, property_type FROM properties";

            // Initialize the parameters list
            var parameters = new List<MySqlParameter>();

            // Add WHERE clause for MaxPrice if it's specified (not "No Maximum")
            if (MaxPrice > 0)
            {
                query += " WHERE max_price <= @MaxPrice";
                parameters.Add(new MySqlParameter("@MaxPrice", MaxPrice));
            }

            // Add other WHERE clause conditions if MaxPrice was specified
            bool hasConditions = false;

            // Check if a specific suburb is selected
            if (!string.IsNullOrEmpty(Suburb) && Suburb != "All Suburbs")
            {
                if (!hasConditions && MaxPrice > 0)
                {
                    query += " AND suburb = @Suburb";
                }
                else if (MaxPrice <= 0)
                {
                    query += " WHERE suburb = @Suburb";
                }
                parameters.Add(new MySqlParameter("@Suburb", Suburb));
                hasConditions = true;
            }

            // Add PropertyType condition
            if (!string.IsNullOrEmpty(PropertyType) && PropertyType != "All property types")
            {
                if (!hasConditions && MaxPrice > 0)
                {
                    query += " AND property_type = @PropertyType";
                }
                else if (MaxPrice <= 0 && !hasConditions)
                {
                    query += " WHERE property_type = @PropertyType";
                }
                else if (MaxPrice <= 0 && hasConditions)
                {
                    query += " AND property_type = @PropertyType";
                }
                parameters.Add(new MySqlParameter("@PropertyType", PropertyType));
                hasConditions = true;
            }

            // Add Bedroom condition
            if (!string.IsNullOrEmpty(Bedroom))
            {
                switch (Bedroom)
                {
                    case "One Bedroom":
                        query += (hasConditions ? " AND" : " WHERE") + " bedroom = @Bedroom";
                        parameters.Add(new MySqlParameter("@Bedroom", 1));
                        break;
                    case "Two Bedrooms":
                        query += (hasConditions ? " AND" : " WHERE") + " bedroom = @Bedroom";
                        parameters.Add(new MySqlParameter("@Bedroom", 2));
                        break;
                    case "Three Bedrooms":
                        query += (hasConditions ? " AND" : " WHERE") + " bedroom = @Bedroom";
                        parameters.Add(new MySqlParameter("@Bedroom", 3));
                        break;
                    case "Four Bedrooms or more":
                        query += (hasConditions ? " AND" : " WHERE") + " bedroom >= @Bedroom";
                        parameters.Add(new MySqlParameter("@Bedroom", 4));
                        break;
                    case "Any Number of Bedrooms":
                        // No additional condition needed
                        break;
                }
                hasConditions = true;
            }

            // Add Bathroom condition
            if (!string.IsNullOrEmpty(Bathrooms))
            {
                switch (Bathrooms)
                {
                    case "One bathroom":
                        query += (hasConditions ? " AND" : " WHERE") + " bathrooms = @Bathrooms";
                        parameters.Add(new MySqlParameter("@Bathrooms", 1));
                        break;
                    case "Two bathrooms":
                        query += (hasConditions ? " AND" : " WHERE") + " bathrooms = @Bathrooms";
                        parameters.Add(new MySqlParameter("@Bathrooms", 2));
                        break;
                    case "Three bathrooms or more":
                        query += (hasConditions ? " AND" : " WHERE") + " bathrooms >= @Bathrooms";
                        parameters.Add(new MySqlParameter("@Bathrooms", 3));
                        break;
                    case "Any number of bathrooms":
                        // No additional condition needed
                        break;
                }
                hasConditions = true;
            }

            // Debug: Output the final query
            Console.WriteLine("Generated SQL Query: " + query);

            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        // Add parameters to the SQL command
                        command.Parameters.AddRange(parameters.ToArray());

                        connection.Open();

                        using (MySqlDataAdapter adapter = new MySqlDataAdapter(command))
                        {
                            DataTable originalDataTable = new DataTable();
                            adapter.Fill(originalDataTable);

                            DataTable filteredDataTable = new DataTable();
                            filteredDataTable.Columns.Add("ID", typeof(string));
                            filteredDataTable.Columns.Add("Suburb", typeof(string));
                            filteredDataTable.Columns.Add("Max Price", typeof(decimal));
                            filteredDataTable.Columns.Add("Property Type", typeof(string));

                            propertyIds.Clear(); // Clear previous IDs
                            foreach (DataRow row in originalDataTable.Rows)
                            {
                                DataRow newRow = filteredDataTable.NewRow();
                                newRow["ID"] = row["id"];
                                newRow["Suburb"] = row["suburb"];
                                newRow["Max Price"] = row["max_price"];
                                newRow["Property Type"] = row["property_type"];
                                filteredDataTable.Rows.Add(newRow);

                                // Add the property ID to the list
                                propertyIds.Add(row["id"].ToString());
                            }

                            property_list.DataSource = filteredDataTable;
                            total_properties.Text = $"{filteredDataTable.Rows.Count} Properties Found";

                            if (filteredDataTable.Rows.Count > 0)
                            {
                                currentIndex = 0; // Start with the first property
                                DisplayPropertyDetails(propertyIds[currentIndex]);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error while fetching properties: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void PropertyList_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0 && e.RowIndex < property_list.Rows.Count)
            {
                // Get the ID of the selected row (assuming the first column is "ID")
                string selectedId = property_list.Rows[e.RowIndex].Cells["ID"].Value.ToString();

                // Call the function to fetch property details
                FetchPropertyDetails(selectedId);
            }
        }

        private void DisplayPropertyDetails(string propertyId)
        {
            FetchPropertyDetails(propertyId);
        }

        private void FetchPropertyDetails(string propertyId)
        {
            // Query to select property_image and description for the given ID
            string query = "SELECT " +
                "property_image, " +
                "description, " +
                "construction, " +
                "bedroom," +
                "bathrooms," +
                "telephone FROM properties WHERE id = @id";

            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@id", propertyId);

                        connection.Open();

                        using (MySqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // Assuming you have controls to display the property_image and description
                                string imageUrl = reader["property_image"].ToString();
                                string description = reader["description"].ToString();
                                string construction = reader["construction"].ToString();
                                string bedroom = reader["bedroom"].ToString();
                                string bathrooms = reader["bathrooms"].ToString();
                                string telephone = reader["telephone"].ToString();

                                // Load and display the image (example: using PictureBox)
                                selectedProperty_image.Load(imageUrl);

                                // Display the description (example: using a Label or TextBox)
                                propertySelected_description.Text = description;
                                contruction_value.Text = construction;
                                bedrooms_value.Text = bedroom;
                                bathrooms_value.Text = bathrooms;
                                telephone_value.Text = telephone;
                            }
                            else
                            {
                                MessageBox.Show("No property details found.", "Details", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error while fetching property details: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        // Event Handlers for Navigation Buttons
        private void btnPrevious_Click(object sender, EventArgs e)
        {
            if (propertyIds.Count == 0) return;

            if (currentIndex > 0)
            {
                currentIndex--;
                DisplayPropertyDetails(propertyIds[currentIndex]);
            }
        }

        private void btnNext_Click(object sender, EventArgs e)
        {
            if (propertyIds.Count == 0) return;

            if (currentIndex < propertyIds.Count - 1)
            {
                currentIndex++;
                DisplayPropertyDetails(propertyIds[currentIndex]);
            }
        }

        private void btnFirst_Click(object sender, EventArgs e)
        {
            if (propertyIds.Count == 0) return;

            currentIndex = 0;
            DisplayPropertyDetails(propertyIds[currentIndex]);
        }

        private void btnLast_Click(object sender, EventArgs e)
        {
            if (propertyIds.Count == 0) return;

            currentIndex = propertyIds.Count - 1;
            DisplayPropertyDetails(propertyIds[currentIndex]);
        }
    }
}