using System;
using System.Drawing;
using System.Windows.Forms;

namespace Artificial_Intelligence
{
    public partial class selectDetails : Form
    {
        // Variables to store the selected values for each category
        private string selectedSuburb;
        private string selectedBedroom;
        private string selectedMaxPrice;
        private string selectedPropertyType;
        private string selectedBathrooms;

        public selectDetails()
        {
            InitializeComponent();
            this.MaximizeBox = false;
        }

        // This method is called when the form loads
        private void selectDetails_Load(object sender, EventArgs e)
        {
            // Assign event handlers to buttons (Suburb category)
            all_suburbs.Click += SuburbButton_Click;
            central_suburbs.Click += SuburbButton_Click;
            eastern_shore.Click += SuburbButton_Click;
            northern_suburbs.Click += SuburbButton_Click;
            southern_suburbs.Click += SuburbButton_Click;

            // Assign event handlers to buttons (Bedroom category)
            any_number_of_bedrooms.Click += BedroomButton_Click;
            one_bedroom.Click += BedroomButton_Click;
            two_bedrooms.Click += BedroomButton_Click;
            three_bedrooms.Click += BedroomButton_Click;
            four_bedrooms_or_more.Click += BedroomButton_Click;

            // Assign event handlers to buttons (Maximum Price category)
            no_maximum.Click += MaxPriceButton_Click;
            price_1.Click += MaxPriceButton_Click;
            price_2.Click += MaxPriceButton_Click;
            price_3.Click += MaxPriceButton_Click;
            price_4.Click += MaxPriceButton_Click;
            price_5.Click += MaxPriceButton_Click;
            price_6.Click += MaxPriceButton_Click;
            price_7.Click += MaxPriceButton_Click;
            price_8.Click += MaxPriceButton_Click;
            price_9.Click += MaxPriceButton_Click;
            price_10.Click += MaxPriceButton_Click;
            price_11.Click += MaxPriceButton_Click;

            // Assign event handlers to buttons (Property Type category)
            all_property_types.Click += PropertyTypeButton_Click;
            house.Click += PropertyTypeButton_Click;
            unit.Click += PropertyTypeButton_Click;
            townhouse.Click += PropertyTypeButton_Click;

            // Assign event handlers to buttons (Bathrooms category)
            any_number_of_bathrooms.Click += BathroomsButton_Click;
            one_bathroom.Click += BathroomsButton_Click;
            two_bathrooms.Click += BathroomsButton_Click;
            three_bathrooms_or_more.Click += BathroomsButton_Click;
        }

        // Event handler for Suburb category buttons
        private void SuburbButton_Click(object sender, EventArgs e)
        {
            Button clickedButton = sender as Button;
            selectedSuburb = clickedButton.Text;
            suburb_title.Text = $"Suburb: {selectedSuburb}";
        }

        // Event handler for Bedroom category buttons
        private void BedroomButton_Click(object sender, EventArgs e)
        {
            Button clickedButton = sender as Button;
            selectedBedroom = clickedButton.Text;
            bedroom_title.Text = $"Bedroom: {selectedBedroom}";
        }

        // Event handler for Max Price category buttons
        private void MaxPriceButton_Click(object sender, EventArgs e)
        {
            Button clickedButton = sender as Button;
            selectedMaxPrice = clickedButton.Text;
            maximumPrice_title.Text = $"Maximum Price: {selectedMaxPrice}";
        }

        // Event handler for Property Type category buttons
        private void PropertyTypeButton_Click(object sender, EventArgs e)
        {
            Button clickedButton = sender as Button;
            selectedPropertyType = clickedButton.Text;
            propertyType_title.Text = $"Property Type: {selectedPropertyType}";
        }

        // Event handler for Bathrooms category buttons
        private void BathroomsButton_Click(object sender, EventArgs e)
        {
            Button clickedButton = sender as Button;
            selectedBathrooms = clickedButton.Text;
            bathrooms_title.Text = $"Bathrooms: {selectedBathrooms}";
        }

        private void restart_Click(object sender, EventArgs e)
        {
            // Reset all selected values to empty strings
            selectedSuburb = "";
            selectedBedroom = "";
            selectedMaxPrice = "";
            selectedPropertyType = "";
            selectedBathrooms = "";

            // Reset the text of any labels or UI elements that show the selected values
            suburb_title.Text = "Suburb";
            bedroom_title.Text = "Bedroom";
            maximumPrice_title.Text = "Maximum Price";
            propertyType_title.Text = "Property Type";
            bathrooms_title.Text = "Bathrooms";
        }

        private void search_Click(object sender, EventArgs e)
        {
            // Check for empty fields
            if (string.IsNullOrEmpty(selectedSuburb))
            {
                MessageBox.Show("Please select a Suburb.", "Validation Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (string.IsNullOrEmpty(selectedBedroom))
            {
                MessageBox.Show("Please select the number of Bedrooms.", "Validation Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (string.IsNullOrEmpty(selectedMaxPrice))
            {
                MessageBox.Show("Please select a Maximum Price.", "Validation Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (string.IsNullOrEmpty(selectedPropertyType))
            {
                MessageBox.Show("Please select a Property Type.", "Validation Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (string.IsNullOrEmpty(selectedBathrooms))
            {
                MessageBox.Show("Please select the number of Bathrooms.", "Validation Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            float maxPrice = 0.0f; // Initialize to a default value
            bool isNoMaximum = selectedMaxPrice.Equals("No Maximum", StringComparison.OrdinalIgnoreCase);

            if (!isNoMaximum)
            {
                try
                {
                    // Remove any non-numeric characters except the decimal point
                    string cleanedMaxPriceText = selectedMaxPrice.Replace("$", "").Replace(",", "").Trim();

                    // Check if the cleaned input is empty
                    if (string.IsNullOrWhiteSpace(cleanedMaxPriceText))
                    {
                        MessageBox.Show("Please enter a valid Maximum Price.", "Validation Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return;
                    }

                    // Try to parse the cleaned input to a float
                    bool isValid = float.TryParse(cleanedMaxPriceText, out maxPrice);

                    if (!isValid || maxPrice < 0)
                    {
                        MessageBox.Show("Please enter a valid Maximum Price.", "Validation Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return;
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"An error occurred while processing the Maximum Price: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }

            // If all fields are valid, proceed to show the summary
            string summary = $"Suburb: {selectedSuburb}\n" +
                             $"Bedroom: {selectedBedroom}\n" +
                             $"Max Price: {maxPrice}\n" +
                             $"Property Type: {selectedPropertyType}\n" +
                             $"Bathrooms: {selectedBathrooms}";

            // Create an instance of the details form and set properties
            listOfProperties detailsForm = new listOfProperties
            {
                Suburb = selectedSuburb,
                Bedroom = selectedBedroom,
                MaxPrice = maxPrice,
                PropertyType = selectedPropertyType,
                Bathrooms = selectedBathrooms
            };

            // Show the details form
            detailsForm.Show();

            // Hide the current form
            this.Hide();

            // Optionally, handle form closure event to close the main form
            detailsForm.FormClosed += (s, args) => this.Close();
        }
    }
}
