using System;
using System.Collections.Generic;
using System.Text;


namespace App
{
    public class Exo1
    {
        protected readonly Dictionary<int, String> arabianLatinMatch = new Dictionary<int, string>() {
                {1000, "M"},
                {900, "CM"},
                {500, "D"},
                {400, "CD"},
                {100, "C"},
                {90, "XC"},
                {50, "L"},
                {40, "XL"},
                {10, "X"},
                {9, "IX"},
                {5, "V"},
                {4, "IV"},
                {1, "I"}
        };
        public String ToRomanNumber(int number) {
            var latin = new StringBuilder();
            while(number > 0) {
                foreach(var arabian in arabianLatinMatch.Keys) {
                    if(number >= arabian) {
                        number -= arabian;
                        latin.Append(arabianLatinMatch[arabian]);
                        break;
                    }
                }
            }
            return latin.ToString();
        }
    }
}