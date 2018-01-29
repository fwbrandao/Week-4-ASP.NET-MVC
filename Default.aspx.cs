using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		LabelDate.Text = "The date and time is " + DateTime.Now.ToString();
	}

	protected void BtnName_Click(object sender, EventArgs e)
	{
		LblName.Text = "Hello, " + tbName.Text;
	}

	protected void BtnCheckBox_Click(object sender, EventArgs e)
	{
		if (CheckBox1.Checked)
		{
			lblCheckBox.Text = "The box has been checked";
		}
		else
		{
			lblCheckBox.Text = "The box hasnt been checked";
		}
	}



	protected void ButtonLanguage_Click(object sender, EventArgs e)
	{
		FavouriteLanguage.Text = "From the drop-down list, your chosen language is: " + FavouriteLanguage.SelectedItem + ".";
	}


	protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
	{
		switch (e.PostBackValue)
		{
			case "Great Britain":
				ImageMapLabel.Text = "This is the Great Britain";
				break;
			case "United Kingdon":
				ImageMapLabel.Text = "This is the United Kingdon";
				break;
			default:
				ImageMapLabel.Text = "If you click on the Great Britain or the United Kingdon, a message will display here.";
				break;
		}

	}

	protected void ImageMap2_Click(object sender, ImageMapEventArgs e)
	{
		switch (e.PostBackValue)
		{
			case "Left side tower":
				ImageMapLabe2.Text = "Left side tower";
				break;
			case "Right side tower":
				ImageMapLabe2.Text = "Right side tower";
				break;
			default:
				ImageMapLabe2.Text = "If you click on the left tower or the right tower, a message will display here.";
				break;
		}
	}

	protected void radioButton_Click(object sender, EventArgs e)
	{

		if (rBtnCheck.Checked)
		{
			lblRadioBox.Text = "Thanks for clicking the radio button. ";
		}
		else
		{
			lblRadioBox.Text = "The box hasnt been checked";
		}
	}

	protected void textBoxButton_Click(object sender, EventArgs e)
	{
		int textLength = TextBoxMultiline.Text.Length;

		textBoxLabel.Text = ("You tiped " + textLength + " characters in this text box.");
	}

	protected void emailBoxButton_Click(object sender, EventArgs e)
	{
		emailBoxlabel.Text = "You entered a valid email address.";
		//note that this label is reset to blank in the Page_Load method, in case
		//an invalid email address is entered after a valid one
	}

	protected void Calendar1_SelectionChanged(object sender, EventArgs e)
	{
		calendarLabel.Text = "The date you selected is: " + Calendar1.SelectedDate.ToShortDateString();
	}

	protected void FileUploadButton_Click(object sender, EventArgs e)
	{
		if (FileUpload1.HasFile)
		{
			//Uncomment this line to Save the uploaded file
			//FileUpload1.SaveAs("C:\" + FileUpload1.Filename);
			FileUploadLabel.Text = "<br/>Uploaded " + FileUpload1.FileName + " <br/>Content Type " + FileUpload1.PostedFile.ContentType + "<br/> Length " + FileUpload1.PostedFile.ContentLength;
			ImageUpload.ImageUrl = FileUpload1.FileName;
		}
		else
		{
			FileUploadLabel.Text = "No uploaded file";
		}
	}
}


	