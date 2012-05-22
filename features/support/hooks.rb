Before do
  @puppetcfg['confdir']  = File.join(File.dirname(__FILE__), '..', '..', '..', '..')
  @puppetcfg['modulepath']  = File.join(@puppetcfg['confdir'], 'modules')

  # adjust facts like this
  @facts['architecture'] = "i386"
end
