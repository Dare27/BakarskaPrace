   M S B A M L   `   `   `  ����J  FBakalarskaPrace, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:BakalarskaPraceBakalarskaPrace  5   	   %    BakalarskaPrace.WindowLoadImage   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:BakalarskaPrace     5   	     � Title$  Import image��5   	   $	��194��6   $	��346��6+    � WindowStartupLocation$ CenterScreen=�5	   	   ���#2b2b2b � 
ResizeMode$ NoResize=�5   	   .��5      �� $��Stretch=�6   $��10q�6/    K� ZIndex$ 10��6;   .+�5   
   �� -   5        $��ImportImageCheckBox��5      $��Import as a single image��6n   $	��0,2q�6�    d� 	IsChecked$
 trueY�6�   
�������$��25��6�   �� 5   
   -   5        $��ImportSpritesheetCheckBox��5      $��Import as spritesheet��6�   $	��0,2q�6�   
�������$��25��6�   �� 5   
   -   5        $��	FrameSize��5       �� Orientation$ 
Horizontal=�6&   $	��0,2q�6@   $��25��6M   .+�5      �� $��
Frame size��6   $��80��6)   � 5      .+�5      �� -   5        $��widthTextBox��5       �� TextWrapping$
 Wrap=�6.   $��64��6B   
������� � Cursor$ Arrow��6�   �� 5      $��X��6   �� 5      -   5        $��heightTextBox��5      $
 Wrap=�6/   $��64��6C   
�������6�   5      5      �� 5    
   $ 
Horizontal=�6   $��Bottom=�6.   $��Right=�6I   $	��0,5q�6e   $��30��6r   .+�5!      �� -   5        $��Import��5!      $��2q�6;   $��25��6F   �� 5"      -   5        $��Cancel��5"      $��2q�6;   $��25��6F   5#      5$      5%      