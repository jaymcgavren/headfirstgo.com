require "rake/packagetask"

# This monkey patch prevents a folder with the package name from
# being created within the zip file.
class Rake::PackageTask
  def package_dir_path
    package_dir
  end
  def package_name
    "source"
  end
end

def package_file_name(package)
  "head_first_ruby_#{package}"
end

Rake::PackageTask.new(package_file_name("source"), :noversion) do |p|
  p.need_zip = true
  p.package_files.include("source/**/*")
end
