# /etc/puppetlabs/code/environments/production/site/windemo/manifests/uc5.pp
# Sample Puppet code to demonstrate setting up a DHCP server via DSC

class windemo::uc5 {

{
  dsc_windowsfeature { 'DHCP':
  ensure   =>  present,
  dsc_name => DHCP,
 }
 dsc_xDhcpServerScope { 'Scope':
     {
       ensure => present,
       dsc_ipendrange => '192.168.1.254',
       dsc_ipstartrange => '192.168.1.1',
       dsc_name => 'powershellscope',
       dsc_subnetmask => '255.255.255.0',
       dsc_dsc_leaseduration => '00:08:00',
       dsc_state => 'active',
       dsc_addressfamily => 'ipv4',
     }
}
