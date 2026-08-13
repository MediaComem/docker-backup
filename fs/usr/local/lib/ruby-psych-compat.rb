require 'psych'

Psych.singleton_class.prepend(Module.new do
  def load(yaml, *args, **kwargs)
    unsafe_load(yaml)
  end
end)
