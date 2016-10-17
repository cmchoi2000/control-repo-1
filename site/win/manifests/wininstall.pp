# /etc/puppetlabs/code/environments/production/site/win/manifests/winusers.pp
class win::wininstall {
  package {'notepadplusplus':
    ensure  =>  latest,
    provider  =>  'chocolatey',
  }

  package {'vlc':
    ensure => ['2.2.0',held],
    provider  =>  'chocolatey',
  }
}