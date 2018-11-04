class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => running,
    enable => true,
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDKXpREjrJ2wPA6f0r3Y1U6NHECLtaqOnjE2nVYPffeIrWRGZSvwUaSbFyZYesewRpkAzFqA4RYOiNLlgBaQbH5paWFOQ5BrJ0i1E9Ied5nFCryBk155BYI81DFeatviUFF9RMeJISsifNvFWoG8cA9BJTO8KiTYUyQY4a7Pq6rPtcb/Up7NFRpMn8z/FloAAEmKAIIe/VlEx5bGU7OhEzx6TcksmsNWTODOBPTZuAgzcEvXHt0Rk0UrLtblI5J1wLZrGWmNHSn6rgBQEraWGAU/ErePoWSUgiZovSMK207oNKV1PggK5XgfsANUmcgq1dNe5JZ6LCVxSF+Sb/T5Z1N',
  }
}
