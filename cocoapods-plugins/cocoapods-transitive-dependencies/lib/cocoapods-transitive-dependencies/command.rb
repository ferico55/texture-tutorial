require 'cocoapods-transitive-dependencies/command/dependencies'

class Pod::Installer::Xcode::TargetValidator

  # Disable this check
  def verify_no_static_framework_transitive_dependencies
  end
end
