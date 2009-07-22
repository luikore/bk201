require File.expand_path(File.dirname __FILE__) + '/../bk201.rb'
class A
  extend Bk201::Asm
  asm_method :int, 'see_eax', 0 do |a|
    # int2fix (i << 1 | 1)
    a.code << "\xb8\x01\x00\x00\x00"
  end
end
puts A.new.see_eax
