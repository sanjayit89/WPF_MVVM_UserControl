   M S B A M L   `   `   `  ����F  BMVVM_Sample, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:MVVM_SampleMVVM_Sample  5   	   =#clr-namespace:MVVM_Sample.ViewModelMVVM_Sample.ViewModel  5   	   A%clr-namespace:MVVM_Sample.UserControlMVVM_Sample.UserControl  5   	       MVVM_Sample.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:MVVM_Sample     5   	   2vm#clr-namespace:MVVM_Sample.ViewModel     5   	   6view%clr-namespace:MVVM_Sample.UserControl     5   	     � Title$  
MainWindow��5
   	   $	��450��6   $	��800��6)    � 	Resources 5      +   %MVVM_Sample.ViewModel.PersonViewModel   PersonViewModel��%   &	          5   
   6   5      .��5      �  � DataContext 6   ��  �� Source# [   � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $��* �6   6)    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   �� -   5         ��Name$ lblFName��5      $��0��6&   $��0��66   $��
First Name��6C   6W   �� 5   
   -   5         ��Name$ txtFName��5      $��1��6$   $��0��64   $	��500��6A   $��Center=�6M   ��6j   �� *Person.FName+ �� Mode$ TwoWay=�6�   �� 5   
   -   5        $ lblLName��5      $��0��6&   $��1��66   $��	Last Name��6C   6V   �� 5   
   -   5        $ txtLName��5      $��1��6$   $��1��64   $	��500��6A   $��Center=�6M   ��6j   �� *Person.LName+$ TwoWay=�6�   �� 5   
   $��0��6   $��2��6C   $��50��6P   $��20��6[   $��5,5,5,5q�6g   $��Submit��6x   ��6!   �� *SubmitCommand+6�   &    MVVM_Sample.UserControl.ListView  5   
   $��1��6   $��3��6(   5!      5"      