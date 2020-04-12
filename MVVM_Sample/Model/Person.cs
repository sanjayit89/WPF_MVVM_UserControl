using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVVM_Sample.Model
{
   public class Person : INotifyPropertyChanged
    {
        private string fName;

        public string FName
        {
            get { return fName; }
            set { fName = value; }// OnPropertyChanged("FName"); }
        }
        private string lName;

        public string LName
        {
            get { return lName; }
            set { lName = value; }// OnPropertyChanged("LName"); }
        }
        private string fullname;
            
        public string FullName
        {
            get { return fullname = FName + " " + LName; }
            set
            { if (fullname != value)
                {
                    fullname = value;
                }
                
            }
        }
        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged(string p)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(p));
            }
        }
    }
}
