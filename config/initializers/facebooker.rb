Facebooker2.instance_variable_set('@namespace', YAML.load(ERB.new(File.read(File.join(::Rails.root,"config","facebooker.yml"))).result)[::Rails.env]['namespace'])

Facebooker2.load_facebooker_yaml