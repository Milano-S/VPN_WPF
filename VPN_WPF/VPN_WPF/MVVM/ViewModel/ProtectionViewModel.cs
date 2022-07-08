using System;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Windows;
using VPN_WPF.Core;
using VPN_WPF.MVVM.Model;

namespace VPN_WPF.MVVM.ViewModel
{
    internal class ProtectionViewModel : ObservableObject
    {

        public ObservableCollection<ServerModel> Servers{ get; set; }

        private string _connectionStatus;
        public string ConnectionStatus
        {
            get { return _connectionStatus; }
            set { 
                _connectionStatus = value; 
                OnPropertyChanged();
            }
        }

        public RelayCommand ConnectCommand { get; set; }

        public ProtectionViewModel()
        {
            Servers = new ObservableCollection<ServerModel>();
            Servers.Add(new ServerModel
            {
                Country = "USA"
            });
            Servers.Add(new ServerModel
            {
                Country = "Africa"
            });
            Servers.Add(new ServerModel
            {
                Country = "Russia"
            });
            Servers.Add(new ServerModel
            {
                Country = "South America"
            });

            ConnectCommand = new RelayCommand(o => { 
                ConnectionStatus = "Connecting..";
                var process = new Process();
                process.StartInfo.FileName = "cmd.exe";
                process.StartInfo.WorkingDirectory = Environment.CurrentDirectory;/pho
                process.StartInfo.ArgumentList.Add(@"/c rasdial MyServer vpnbook mzw6x8e nebook:./VPN/VPN.pbk");

                process.Start();
                process.WaitForExit();

                switch (process.ExitCode)
                {
                    case 0:
                        Debug.WriteLine("Success");
                        ConnectionStatus = "Connected";

                        break;
                    case 691:
                        Debug.WriteLine("Wrong credentials");
                        break;
                    default:
                        Console.WriteLine("Wait");
                        break;
                }
            });
        }
        public void ServerBuilder()
        {
            var address = "us1.vpnbook.com";
            var FolderPath = $"{Directory.GetCurrentDirectory()}/VPN";
            var PbkPath = $"{FolderPath}/{address}.pbk";

            if (!Directory.Exists(FolderPath))
                Directory.CreateDirectory(FolderPath);

            if (File.Exists(PbkPath))
            {
                MessageBox.Show("Connection already exists!");
                return;
            }

            var sb = new StringBuilder();
            sb.AppendLine("[MyServer]");
            sb.AppendLine("MEDIA=rastapi");
            sb.AppendLine("Port=VPN2-0]");
            sb.AppendLine("Device=WAN Miniport (IKEv2)");
            sb.AppendLine("DEVICE=vpn");
            sb.AppendLine($"PhoneNumber={address}");
            File.WriteAllText(PbkPath, sb.ToString());


        }
    }
}
