   M S B A M L   `   `   `  ����J  FBakalarskaPrace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:BakalarskaPraceBakalarskaPrace  5   	   #    BakalarskaPrace.WindowStartup   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:BakalarskaPrace     5   	     � Title$  Create animation��5   	   $	��177��6"   $	��343��6/    � WindowStartupLocation$ CenterScreen=�5	   	   ���#2b2b2b � 
ResizeMode$ NoResize=�5   	   .��5      �� $��10q�6    K� ZIndex$ 10��6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $	��0,2q�6.   $��25��6;   .+�5      �� $��Width:��6   $��50��6%   �� 5      -   5        $��widthTextBox��5       �� TextWrapping$
 Wrap=�6*   $��14��6>   $��28��6L   $��64��6Z   
������� � Cursor$ Arrow��6�   �� 5      -   5        $��WidthWarning��5      $$��Width has to be higher than 0!��6(   $	��241��6Q   $��10,0,0,0q�6]   ���	#DDD60000$y�Hidden=�6�   5      �� 5   
   $ 
Horizontal=�6   $	��0,2q�6.   $��25��6;   .+�5      �� $��Height:��6   $��50��6&   �� 5      -   5        $��heightTextBox��5      $
 Wrap=�6+   $��14��6?   $��28��6M   $��64��6[   
�������$ Arrow��6�   �� 5      -   5        $��HeightWarning��5      $%��Height has to be higher than 0!��6)   $	��241��6S   $��10,0,0,0q�6_   ���	#DDD60000$y�Hidden=�6�   5      �� 5   
   $ 
Horizontal=�6   $	��0,2q�6.   $��25��6;   .+�5      �� $��Maintain aspect ratio��6   $	��122��64   �� 5      -   5        $!��maintainAspectRatioCheckBox��5       d� 	IsChecked$
 trueY�6:   $��RightToLeft=�6K   $��25��6g   
�������$��25��6�   5      �� 5   
   $ 
Horizontal=�6   $��Right=�6.   $
��0, 5q�6J   $	��154��6X   .+�5      �� -   5        $��Create��5      $��2q�6;   $��24��6F   $��73��6R   $
 Hand��6]   �� 5      -   5        $��Cancel��5      $��2q�6;   $��24��6F   $��73��6R   $
 Hand��6]   5      5       5!      