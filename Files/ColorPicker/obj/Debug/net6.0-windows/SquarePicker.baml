   M S B A M L   `   `   `  ����R  NColorPicker, Version=3.3.1.0, Culture=neutral, PublicKeyToken=1c61eec504ce2276)clr-namespace:ColorPickerColorPicker  5      C&clr-namespace:ColorPicker.UserControlsColorPicker.UserControls  5      ?$clr-namespace:ColorPicker.ConvertersColorPicker.Converters  5          ColorPicker.SquarePicker   5      W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      +localclr-namespace:ColorPicker     5      ;controls&clr-namespace:ColorPicker.UserControls     5      5conv$clr-namespace:ColorPicker.Converters     5      -   5        #   ColorPicker.PickerControlBase   Name$  uc��5      $	��100��5
      $	��100��5       � 	Resources 5      )  #ColorPicker.Converters.MinConverter   MinConverter�� 5   
   %   &	          5      6    5      .��5      � -   5         �Name$
 grid��5      ��5   
   `� 5       `� 	Converter# [  6   .1�5      ��  �� ElementName$ uc��6    �� Path$ ActualWidth�6+   �� 5      $ uc��6   $ ActualHeight�6+   5      ��5   
   `� 5      # [  6   .1�5      �� $ uc��6   $ ActualWidth�6+   �� 5      $ uc��6   $ ActualHeight�6+   5       � RowDefinitions 5    
   �� 5!      $��0.22* �6   �� 5"      $��0.56* �6   �� 5#      $��0.22* �6    � ColumnDefinitions 5%   
   �� 5&      $��0.22* �6   �� 5'      $��0.56* �6   �� 5(      $��0.22* �6   .+�5+   
   (  "ColorPicker.UserControls.HueSlider  $��0��6   $��3��6*   $��0��6;   $��3��6K      SmallChange 5,      �� $ uc��$ SmallChange�	   Value	 5-      �� $ uc��$ Color.HSV_H�
 �� Mode$
 TwoWay=�+  %ColorPicker.UserControls.SquareSlider  5.   
   $��1��6    $��1��6-      RangeX$	 100Q�6=      RangeY$	 100Q�6J   
   Hue 5/       �� $ uc��$ Color.HSV_H�   
PickerType 50       �� $ uc��$ 
PickerType���51      �� 52       �� 
TargetType"  6   .�53      ��  �� Property �@ HeadX �� Value 6.   �� $ uc��$ Color.HSV_S�$
 TwoWay=��� 54       �@ HeadY 6.   �� $ uc��$ Color.HSV_V�$
 TwoWay=� �� Triggers 55      �� 56       �� Binding 6&   �� $ uc��$ 
PickerType� �� Value HSL6Z   .a�57      ��  �@ HeadX 66   �� $ uc��$ Color.HSL_S�$
 TwoWay=��� 58       �@ HeadY 66   �� $ uc��$ Color.HSL_L�$
 TwoWay=�59      5;      5=      5?      5@      