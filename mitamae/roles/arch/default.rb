include_recipe File.expand_path('../../../helper', __FILE__)

node.reverse_merge!(
  user: 'kirikiriyamama',
  home: '/home/kirikiriyamama',
  dotfiles: File.expand_path('../../../../home', __FILE__),
)


package 'base-devel'
# Ensure that all packages of base-devel are installed
base_devel = run_command('pacman -Sg base-devel | cut -d\  -f2').stdout.split
base_devel.reject { |p| wsl? && p == 'fakeroot' }.each { |p| package p }

include_cookbook 'dotfile'
include_cookbook 'git'
include_cookbook 'aur'
include_cookbook 'unzip'

include_cookbook 'github_binary'

include_cookbook 'asdf'
include_cookbook 'awscli'
include_cookbook 'colordiff'
include_cookbook 'bin'
include_cookbook 'ctags'
include_cookbook 'gh'
include_cookbook 'ghq'
include_cookbook 'kubectl'
# include_cookbook 'man'
include_cookbook 'peco'
# include_cookbook 'ruby'
include_cookbook 'tig'
include_cookbook 'tmux'
include_cookbook 'nvim'
include_cookbook 'zsh'

# package 'bind'
# package 'cu'
package 'ipcalc'
package 'jq'
package 'mtr'
aur 'nkf'
package 'openssh'
# package 'pacman-contrib'
package 'strace'
# package 'sysstat'
package 'uucp' # cu(1)
package 'whois'

if wsl?
  include_cookbook 'win32yank'
end
