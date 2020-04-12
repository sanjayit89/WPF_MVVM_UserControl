using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace MVVM_Sample.Commond
{
    public class Relay_Command:  ICommand
    {
        Action<object> executeAction;
        Func<object, bool> canExecute;
        bool canExecuteCache;
        public Relay_Command(Action<object> executeAction, Func<object,bool> canExecute, bool canExecuteCache)
        {
            this.canExecute = canExecute;
            this.executeAction = executeAction;
#pragma warning disable CS1717 // Assignment made to same variable
            canExecuteCache = canExecuteCache;
#pragma warning restore CS1717 // Assignment made to same variable
        }
        public bool CanExecute(object parameter)
        {
            if (canExecute == null)
            {
                return true;
            }
            else
            {
                return canExecute(parameter);
            }
            //return this.canExecute == null ? true : this.canExecute(parameter);
        }
        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }
        public void Execute(object parameter)
        {
            executeAction(parameter);
        }
    }
}
