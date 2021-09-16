using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Course: ITM 325
//Name: Preston Valles
//Assignment: Assignment 4 Simple Calculator

namespace SimpleCalc
{
    public partial class Default : System.Web.UI.Page
    {
        protected void CalcButton(object sender, EventArgs e)
        {
            //Addition
            if (RadioButtonList1.SelectedIndex == 0)
            {
                Addition();
            }
            //Subtraction
            else if (RadioButtonList1.SelectedIndex == 1)
            {
                Subtraction();
            }
            //Multiplication
            else if (RadioButtonList1.SelectedIndex == 2)
            {
                Multiplication();
            }
            //Division
            else if (RadioButtonList1.SelectedIndex == 3)
            {
                Division();
            }
        }

        private void Addition()
        {
            double firstNum = double.Parse(TextBox1.Text);
            double secondNum = double.Parse(TextBox2.Text);
            double sum = firstNum + secondNum;

            TextBox3.Text = $"{TextBox1.Text} + {TextBox2.Text} = {sum}";
        }
        private void Subtraction()
        {
            double firstNum = double.Parse(TextBox1.Text);
            double secondNum = double.Parse(TextBox2.Text);
            double diff = firstNum - secondNum;

            TextBox3.Text = $"{TextBox1.Text} - {TextBox2.Text} = {diff}";
        }
        private void Multiplication()
        {
            double firstNum = double.Parse(TextBox1.Text);
            double secondNum = double.Parse(TextBox2.Text);
            double product = firstNum * secondNum;

            TextBox3.Text = $"{TextBox1.Text} x {TextBox2.Text} = {product}";
        }
        private void Division()
        {
            double firstNum = double.Parse(TextBox1.Text);
            double secondNum = double.Parse(TextBox2.Text);

            //Round to remove excess decimal points
            double quotient = Math.Round(firstNum / secondNum, 2);
            TextBox3.Text = $"{TextBox1.Text} / {TextBox2.Text} = {quotient}";
        }

        protected void ClearButton(object sender, EventArgs e)
        {
            //RadioButton selection null
            RadioButtonList1.SelectedValue = null;
            //Text string set to empty
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}