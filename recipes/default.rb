# Iterate and install packages
node[:package_installer][:packages].each do |pkg_name, pkg_info|
  pkg_action  = (pkg_info && pkg_info[:action])
  pkg_version = (pkg_info && pkg_info[:version])
  package pkg_name do
    action (pkg_action || :install)
    version pkg_version if pkg_version
  end
end
