group { 'group01':
  ensure => present,
}

group { 'group02':
  ensure => present,
}

user { 'user04':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$6$xyz$RS.wHeM.mhNC0lxrp5Zds0ubSAKobEjpYvIWroBijzmu0tuqfQ1C6iBejYnxrEonuCOM0jgFUF3Dc038gW2.D.',
  groups     => 'group01',
  managehome => true,
}

user { 'user05':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$6$5qFuY8rVQO8Bklop$2cIzCXO3zSJJgpnOOBGeLgras3IPEQMRC4KTt51.9T01.LMc6T15SH7VRBnYtPoGeHrxPKEmYm4XT4T8xqvOD1',
  groups     => 'group02',
  managehome => true,
}

user { 'user06':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$6$d6gVJhql2sGLxjrf$QH3cRqN./D5l3gUwAc4PgLcsTuDvMS2SrHlijhN/doySMi2S5jXRbLlKdctML611Er4VVFTaG/93QOY3HRVlF1',
  groups     => ['group01', 'group02'],
  managehome => true,
}

user { 'user07':
  ensure     => present,
  shell      => '/bin/bash',
  password   => '$6$h05e7jtqLmVaYJAV$7FXK7b16guPW953ap6hmwEc5mllc72WCfMG8HXO15u7CmmcXsyhe9nvQIeSz1YVjOz.n65JdBOYXqQrrErOjs1',
  managehome => true,
}
