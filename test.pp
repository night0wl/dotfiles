class test {
  file{ "/etc/bob":
    content => "bob",
    owner   => "bob",
    group   => "bob",
  }
}
