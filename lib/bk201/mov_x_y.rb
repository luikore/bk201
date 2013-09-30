module Bk201
  module MovXY
    def mov_eax_eax
      @code << "\x8b\xc0"
    end

    def mov_eax_ecx
      @code << "\x8b\xc1"
    end

    def mov_eax_edx
      @code << "\x8b\xc2"
    end

    def mov_eax_ebx
      @code << "\x8b\xc3"
    end

    def mov_eax_esp
      @code << "\x8b\xc4"
    end

    def mov_eax_ebp
      @code << "\x8b\xc5"
    end

    def mov_eax_esi
      @code << "\x8b\xc6"
    end

    def mov_eax_edi
      @code << "\x8b\xc7"
    end

    def mov_ecx_eax
      @code << "\x8b\xc8"
    end

    def mov_ecx_ecx
      @code << "\x8b\xc9"
    end

    def mov_ecx_edx
      @code << "\x8b\xca"
    end

    def mov_ecx_ebx
      @code << "\x8b\xcb"
    end

    def mov_ecx_esp
      @code << "\x8b\xcc"
    end

    def mov_ecx_ebp
      @code << "\x8b\xcd"
    end

    def mov_ecx_esi
      @code << "\x8b\xce"
    end

    def mov_ecx_edi
      @code << "\x8b\xcf"
    end

    def mov_edx_eax
      @code << "\x8b\xd0"
    end

    def mov_edx_ecx
      @code << "\x8b\xd1"
    end

    def mov_edx_edx
      @code << "\x8b\xd2"
    end

    def mov_edx_ebx
      @code << "\x8b\xd3"
    end

    def mov_edx_esp
      @code << "\x8b\xd4"
    end

    def mov_edx_ebp
      @code << "\x8b\xd5"
    end

    def mov_edx_esi
      @code << "\x8b\xd6"
    end

    def mov_edx_edi
      @code << "\x8b\xd7"
    end

    def mov_ebx_eax
      @code << "\x8b\xd8"
    end

    def mov_ebx_ecx
      @code << "\x8b\xd9"
    end

    def mov_ebx_edx
      @code << "\x8b\xda"
    end

    def mov_ebx_ebx
      @code << "\x8b\xdb"
    end

    def mov_ebx_esp
      @code << "\x8b\xdc"
    end

    def mov_ebx_ebp
      @code << "\x8b\xdd"
    end

    def mov_ebx_esi
      @code << "\x8b\xde"
    end

    def mov_ebx_edi
      @code << "\x8b\xdf"
    end

    def mov_esp_eax
      @code << "\x8b\xe0"
    end

    def mov_esp_ecx
      @code << "\x8b\xe1"
    end

    def mov_esp_edx
      @code << "\x8b\xe2"
    end

    def mov_esp_ebx
      @code << "\x8b\xe3"
    end

    def mov_esp_esp
      @code << "\x8b\xe4"
    end

    def mov_esp_ebp
      @code << "\x8b\xe5"
    end

    def mov_esp_esi
      @code << "\x8b\xe6"
    end

    def mov_esp_edi
      @code << "\x8b\xe7"
    end

    def mov_ebp_eax
      @code << "\x8b\xe8"
    end

    def mov_ebp_ecx
      @code << "\x8b\xe9"
    end

    def mov_ebp_edx
      @code << "\x8b\xea"
    end

    def mov_ebp_ebx
      @code << "\x8b\xeb"
    end

    def mov_ebp_esp
      @code << "\x8b\xec"
    end

    def mov_ebp_ebp
      @code << "\x8b\xed"
    end

    def mov_ebp_esi
      @code << "\x8b\xee"
    end

    def mov_ebp_edi
      @code << "\x8b\xef"
    end

    def mov_esi_eax
      @code << "\x8b\xf0"
    end

    def mov_esi_ecx
      @code << "\x8b\xf1"
    end

    def mov_esi_edx
      @code << "\x8b\xf2"
    end

    def mov_esi_ebx
      @code << "\x8b\xf3"
    end

    def mov_esi_esp
      @code << "\x8b\xf4"
    end

    def mov_esi_ebp
      @code << "\x8b\xf5"
    end

    def mov_esi_esi
      @code << "\x8b\xf6"
    end

    def mov_esi_edi
      @code << "\x8b\xf7"
    end

    def mov_edi_eax
      @code << "\x8b\xf8"
    end

    def mov_edi_ecx
      @code << "\x8b\xf9"
    end

    def mov_edi_edx
      @code << "\x8b\xfa"
    end

    def mov_edi_ebx
      @code << "\x8b\xfb"
    end

    def mov_edi_esp
      @code << "\x8b\xfc"
    end

    def mov_edi_ebp
      @code << "\x8b\xfd"
    end

    def mov_edi_esi
      @code << "\x8b\xfe"
    end

    def mov_edi_edi
      @code << "\x8b\xff"
    end

  end
end
