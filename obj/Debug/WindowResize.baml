   M S B A M L   `   `   `  ����J  FBakalarskaPrace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:BakalarskaPraceBakalarskaPrace  5   	   "    BakalarskaPrace.WindowResize   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:BakalarskaPrace     5   	     � Title$  Resize��5   	   $	��200��6   $	��343��6%    � WindowStartupLocation$ CenterScreen=�5	   	   ���#2b2b2b.��5      �� $��Stretch=�6    K� ZIndex$ 10��60   $��10q�6B   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $	��0,2q�6.   .+�5      �� $��Width:��6   $��50��6%   �� 5      -   5        $��widthTextBox��5       �� TextWrapping$
 Wrap=�6*   $��14��6>   $��28��6L   $��64��6Z   
������� � Cursor$ Arrow��6�   5      �� 5   
   $ 
Horizontal=�6   .+�5      �� $��Height:��6   $��50��6&   $	��0,2q�61   �� 5      -   5        $��heightTextBox��5      $
 Wrap=�6+   $��14��6?   $��28��6M   $��64��6[   
�������$ Arrow��6�   5      �� 5   
   $ 
Horizontal=�6   $	��0,2q�6/   .+�5      �� $��Maintain aspect ratio��6   �� 5      -   5        $!��maintainAspectRatioCheckBox��5       d� 	IsChecked$
 TrueY�6;   $��2q�6�   
�������$��Right=�6�   5      �� 5   
   $ 
Horizontal=�6   $	��0,2q�6.   .+�5      �� $��Anchor��6   �� 5      -   5        $��PositionCombobox��5      $��64��6/   $��LeftToRight=�6=    �� DisplayMemberPath$
 Name��6Y    �� SelectedValuePath$ ID��6r   
�������6�   5      �� 5   
   $ 
Horizontal=�6   $��Bottom=�6.   $��Right=�6I   $	��0,5q�6e   $��30��6s   .+�5      �� -   5        $��Resize��5      $��25��6;   $��2q�6G   �� 5      -   5        $��Cancel��5      $��25��6;   $��2q�6G   5       5!      5"      