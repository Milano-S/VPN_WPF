   M S B A M L   `   `   `  ���� B  >VPN_WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:VPN_WPFVPN_WPF  +clr-namespace:VPN_WPF.CoreVPN_WPF.Core  ?$clr-namespace:VPN_WPF.MVVM.ViewModelVPN_WPF.MVVM.ViewModel      VPN_WPF.MainWindow   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:VPN_WPF     1
extensionsclr-namespace:VPN_WPF.Core     :	viewmodel$clr-namespace:VPN_WPF.MVVM.ViewModel       � Title$  
MainWindow��$	��450��$	��800�� � WindowStyle$
 None=�
������  � AllowsTransparency$
 True�� � 
ResizeMode$ 	CanResize=� � DataContext *  $VPN_WPF.MVVM.ViewModel.MainViewModel  .��]� 
���   �$��7q�.+��� $��28�����#1E1E1E$	��Top=� J� InputBindings d�  d� MouseAction$ 	LeftClicke� �� Command �� *MoveWindowCommand+._��  � ColumnDefinitions �� �� $	��100 �.+��� $	��VPN��
�������$��Center=�$��Center=�$��	100,0,0,0q��� $��1��	 �� Orientation$	 
Horizontal=�$��Right=�$��0,0,4,0q�.+��� $��-������ *MinimizeWindowCommand+�� $	��□������ *MaximizeWindowCommand+�� $��X������ *ShutdownWindowCommand+�� $��48��$
��Left=����#1E1E1E���� 
 �� Triggers
 :�  :� RoutedEvent$ Border.MouseEnter��[��� .���� .��W�  �� TargetProperty$ (Border.Width)�	 W� To 120 g� Duration$ 0:0:.1D�:� $ Border.MouseLeave��[��� .���� .��W� $ (Border.Width)� 120$ 0:0:.1D�._��� .+�	� $	��VPN��  VPN_WPF.Core.Extensions   Icon$
 🛡��$��16(�$��7.6,3.5,8,0q�$��Normal"�
������� d� 	IsChecked$
 TrueY����� *ShowProtectionView+	� $��Settings��$	 ⚙��$��	5,3.5,8,0q�$��16(�$��Normal"�
�������$ FalseY����� *ShowSettingsView+�� ���� *CurrentView+