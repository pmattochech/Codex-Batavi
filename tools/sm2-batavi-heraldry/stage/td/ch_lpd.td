convert_settings = {
   resample = 0
   mipmap_level = 6
   format_name = "MD"
   format_descr = "Diff(rgb)"
   uncompressed_flag = false
   fp16 = false
   filter = 0
   sharpen = 1
   fade_rough_flag = false
   fade_rough_mip_bot = 0.200000
   fade_rough_mip_top = 0.750000
   fade_rough_top_min = 1.000000
   fade_flag = false
   fade_begin = 0
   fade_end = 0
   color = {
      A = 0.000000
   }
   m_akill_thick = 0
   compressionQuality = 3
}
materials = {
   batavi = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_batavi_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_batavi_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   luna_wolves = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_luna_wolves_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_luna_wolves_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   default = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            no_ssao = true
            blendMode = "blend"
            albedo_tint = [
               0,
               255,
               255,
               255
            ]
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   retributors_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
			   NM = "d_shldr_retributors_01_nm"
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_retributors_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_retributors_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   apothecary_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {			   
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_apothecary_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_apothecary_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ironhounds_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_ironhounds_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_ironhounds_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   praetors_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_praetors_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_praetors_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   castellans_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            metalness = {
               bias = 0.030000
            }
            roughness = {
               bias = 0.050000
            }
            detail = {
               density = 5.000000
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_castellans_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_castellans_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   doomeagles_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_doomeagles_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_doomeagles_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ultramarines_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_ultramarines_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_ultramarines_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   genesis_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_genesis_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_genesis_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   libators_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_libators_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_libators_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   novamarines_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_novamarines_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_novamarines_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   scythes_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_scythes_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_scythes_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   tome_keepers_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_tome_keepers_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_tome_keepers_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   tridents_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_tridents_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_tridents_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   braz_consuls_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_brazen_consuls_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_brazen_consuls_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   hawk_lords_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_hawk_lords_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_hawk_lords_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   carcharodons_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_carcharodons_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_carcharodons_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   exorcists_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_exorcists_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_exorcists_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   taurans_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_taurans_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_taurans_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   blood_ravens_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_blood_ravens_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_blood_ravens_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   redscorpions_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_red_scorpions_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_red_scorpions_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   omegamarines_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_omega_marines_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_omega_marines_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   storm_giants_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_storm_giants_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_storm_giants_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   minotaurs_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_minotaurs_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_minotaurs_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   white_scars_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_white_scars_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_white_scars_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   imp_fists_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_imperial_fists_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_imperial_fists_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   blood_angels_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_blood_angels_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_blood_angels_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   iron_hands_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_iron_hands_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_iron_hands_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   salamanders_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_salamanders_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_salamanders_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   raven_guard_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_hawk_lords_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_hawk_lords_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   dark_angels_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_dark_angels_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_dark_angels_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   alpha_legion_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_alpha_legion_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_alpha_legion_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   black_legion_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_black_legion_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_black_legion_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ironwarriors_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_iron_warriors_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_iron_warriors_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   night_lords_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_night_lords_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_night_lords_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   world_eaters_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_world_eaters_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_world_eaters_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   death_guard_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_death_guard_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_death_guard_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   bl_templars_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_black_templars_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_black_templars_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   atlantian_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_atlantian_spears_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_atlantian_spears_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   imperius_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_imperius_reavers_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_imperius_reavers_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sons_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_sons_of_guilliman_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sons_of_guilliman_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   thusand_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_thusand_sons_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_thusand_sons_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   black_guard_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_black_guard_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_black_guard_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   revilers_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_revilers_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_revilers_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   raptors_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_raptors_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_raptors_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   d_spectress_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_death_spectress_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_death_spectress_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   necro_hawks_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_necropolis_hawks_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_necropolis_hawks_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   a_absolution_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_angels_of_absolution_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_angels_of_absolution_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   a_redemption_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_angels_of_redemption_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_angels_of_redemption_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   a_vengeance_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_angels_of_vengeance_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_angels_of_vengeance_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   unnamed_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_the_unnamed_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_unnamed_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   b_engeance_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_blades_of_vengeance_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_blades_of_vengeance_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   c_wardens_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_cowled_wardens_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_cowled_wardens_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   b_judgement_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_bringers_of_judgement_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_bringers_of_judgement_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   a_defiance_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_angels_of_defiance_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_angels_of_defiance_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ravenwing_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_da_ravenwing_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_da_ravenwing_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   da_halo_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_da_halo_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_da_halo_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   company_wolf_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_company_wolf_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_company_wolf_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   blackmanes_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_the_blackmanes_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_blackmanes_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   bloodmaws_01_cc = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_the_bloodmaws_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_bloodmaws_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   deathwolves_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_the_deathwolves_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_deathwolves_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   drakeslayers_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_the_drakeslayers_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_drakeslayers_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   firehowlers_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_the_firehowlers_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_firehowlers_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   grimbloods_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_the_grimbloods_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_grimbloods_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ironwolves_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_the_ironwolves_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_ironwolves_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   red_moons_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_the_red_moons_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_red_moons_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   seawolves_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_the_seawolves_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_seawolves_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sons_morkai_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_the_sons_of_morkai_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_sons_of_morkai_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   stormwolves_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_the_stormwolves_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_stormwolves_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   space_wolves_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_space_wolves_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_space_wolves_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   angels_sang_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_angels_sanguine_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_angels_sanguine_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   flesh_tearer_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_flesh_tearers_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_flesh_tearers_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   lamenters_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_lamenters_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_lamenters_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   angels_penit_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_angels_penitent_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_angels_penitent_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   blood_scyth_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_blood_scythes_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_blood_scythes_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   blood_dragon_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_blood_dragons_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_blood_dragons_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   flesh_eaters_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_flesh_eaters_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_flesh_eaters_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ws_dhunters_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ws_dark_hunters_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ws_dark_hunters_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ws_dstrers_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ws_destroyers_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ws_destroyers_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ws_mantiswar_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ws_mantis_warriors_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ws_mantis_warriors_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ws_marauders_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ws_marauders_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ws_marauders_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ws_rampaqers_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ws_rampaqers_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ws_rampaqers_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ws_slarhawks_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ws_solar_hawks_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ws_solar_hawks_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ws_strmlords_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ws_storm_lords_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ws_storm_lords_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ws_smreapers_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ws_storm_reapers_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ws_storm_reapers_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   um_sergeant_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ultramarine_sgt_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ultramarine_sgt_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   default1 = {
      preset = "default"
      __type_id = "material_templ"
   }
   if_cel_lio_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "lpd_if_celestial_lions_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "lpd_if_celestial_lions_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   if_ham_of_d_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "lpd_if_hammers_of_dorn_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "lpd_if_hammers_of_dorn_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   if_invaders_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "lpd_if_invaders_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "lpd_if_invaders_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   if_so_of_ph_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "lpd_if_sons_of_phoenix_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "lpd_if_sons_of_phoenix_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   if_subjug_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "lpd_if_subjugators_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "lpd_if_subjugators_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   red_templar_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "lpd_red_templar_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "lpd_red_templar_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ih_ironlords_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ih_iron_lords_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ih_iron_lords_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ih_redtalons_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ih_red_talons_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ih_red_talons_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ih_sons_medusa = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ih_sons_of_medusa_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ih_sons_of_medusa_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   slm_bvipers_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_slm_black_vipers_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_slm_black_vipers_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   slm_cvnt_fire = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_slm_covenant_of_fire_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_slm_covenant_of_fire_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   slm_drk_krakens = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_slm_dark_krakens_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_slm_dark_krakens_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   slm_dragonspear = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_slm_dragonspears_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_slm_dragonspears_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ih_brazen_claws = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ih_brazen_claws_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ih_brazen_claws_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   engineer_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_07_engineer_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_07_engineer_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ue_spears_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_07_ultra_emperors_spears_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_07_ultra_emperors_spears_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   red_corsairs_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_08_red_corsairs_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_08_red_corsairs_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   default2 = {
      preset = "default"
      __type_id = "material_templ"
   }
   ba_bl_drink_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ba_blood_drinkers_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ba_blood_drinkers_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ba_ang_enc_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ba_angels_encarmine_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ba_angels_encarmine_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ba_ang_verm_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ba_angels_vermillion_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ba_angels_vermillion_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ba_car_blad_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ba_carmine_blades_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ba_carmine_blades_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ba_cru_blad_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ba_cruor_blades_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ba_cruor_blades_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ba_k_of_ch_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "lpd_ba_knights_of_the_chalice_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "lpd_ba_knights_of_the_chalice_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ba_sab_knig_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ba_sable_knights_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ba_sable_knights_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ch_br_beast_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_chaos_brazen_beasts_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_brazen_beasts_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ch_comp_mis_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_chaos_company_of_misery_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_company_of_misery_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ch_cr_slaug_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_chaos_crimson_slaughter_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_crimson_slaughter_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ch_deathmon_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_chaos_deathmongers_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_deathmongers_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ch_emp_chil_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_chaos_emperors_children_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_emperors_children_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ch_flaw_hos_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_chaos_flawless_host_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_flawless_host_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ch_mag_houn_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_chaos_magma_hounds_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_magma_hounds_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ch_cleaved_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_chaos_the_cleaved_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_the_cleaved_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ch_gr_death_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_chaos_the_grey_death_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_the_grey_death_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ch_purge_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_chaos_the_purge_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_the_purge_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ch_scourged_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_chaos_the_scourged_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_the_scourged_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ch_word_bea_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_chaos_word_bearers_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_word_bearers_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   da_dis_cali_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_da_disciples_of_caliban_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_da_disciples_of_caliban_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   da_guar_cov_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_da_guardians_of_the_covenant_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_da_guardians_of_the_covenant_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   da_knig_ab_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_da_knights_of_abhorrence_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_da_knights_of_abhorrence_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   da_panit_bl_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_da_panitent_blades_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_da_panitent_blades_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   da_prime_ab_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_da_prime_absolvers_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_da_prime_absolvers_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sw_wolf_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_sw_wolfspear_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_sw_wolfspear_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ul_aur_chap_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ultramarines_aurora_chapter_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ultramarines_aurora_chapter_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ul_how_grif_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ultramarines_howling_griffons_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ultramarines_howling_griffons_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ul_pat_ulix_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ultramarines_patriarchs_of_ulixis_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ultramarines_patriarchs_of_ulixis_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ul_sil_skul_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ultramarines_silver_skulls_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ultramarines_silver_skulls_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ul_sil_temp_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ultramarines_silver_templars_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ultramarines_silver_templars_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   un_bl_drag_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_unknown_black_dragons_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_unknown_black_dragons_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   un_fir_lord_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_unknown_fire_lords_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_unknown_fire_lords_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   un_mar_mal_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_unknown_marines_malevolent_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_unknown_marines_malevolent_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   un_star_dr_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_unknown_star_dragons_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_unknown_star_dragons_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   un_tiger_ar_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_unknown_tigers_argent_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_unknown_tigers_argent_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   un_wh_te_su_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_unknown_white_templars_suspected_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_unknown_white_templars_suspected_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ch_iron_war_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_chaos_iron_warriors_hazard_stripes_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_iron_warriors_hazard_stripes_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   da_consecr_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_da_consecrators_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_da_consecrators_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ul_bl_wh_co_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ultramarines_black_white_consuls_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ultramarines_black_white_consuls_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ul_iron_sn_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_ultramarines_iron_snakes_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ultramarines_iron_snakes_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   un_mentors_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_unknown_mentors_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_unknown_mentors_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   un_dr_lords_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_unknown_dragon_lords_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_unknown_dragon_lords_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   un_br_skul_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_lpd_unknown_brazen_skulls_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_unknown_brazen_skulls_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   adjudicators = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_adjudicators_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_adjudicators_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   umbral_templars = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_umbral_templars"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_umbral_templars_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   silver_templars = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_silver_templars_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_silver_templars_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   dark_krakens = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_dark_krakens"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_dark_krakens_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   void_krakens = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_void_krakens"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_void_krakens_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   emperors_spears = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_emperors_spears"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_emperors_spears_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   iron_snakes = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_iron_snakes"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_iron_snakes_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   obsidian_jaguars = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_obsidian_jaguars"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_obsidian_jaguars_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   ulixis = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_ulixis"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_ulixis_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sable_swords = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_sable_swords"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sable_swords_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   silver_skulls = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_silver_skulls"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_silver_skulls_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   white_templars = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_white_templars"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_white_templars_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   byzantium = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_byzantium"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_byzantium_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   celestial_lions = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_celestial_lions"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_celestial_lions_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_imp_fists = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_rpd_sh_crim_fists_xxx"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_imp_fists_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   shadow_hawks = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_shadow_hawks"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_shadow_hawks_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   knights_of_abhorrence = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_sh_abhorr"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_abhorr_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sons_of_the_phoenix = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_phoenix"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_phoenix_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   flaming_tome = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_flaming_tome"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_flaming_tome_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_consecrators = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_sh_consecrators"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_consecrators_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_angels_rev = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_sh_angels_rev"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_angels_rev_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_night_watch = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_sh_night_watch"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_night_watch_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_silver_skulls = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               NM = "d_shldr_sh_silver_skulls_nm"
               diffOverride = "d_shldr_sh_silver_skulls"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_silver_skulls_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_astral_knights = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_sh_astral_knights"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_astral_knights_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_nullificators = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_rpd_sh_crim_fists_xxx"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_nullificators_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_dragon_lords = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_sh_dragon_lords"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_dragon_lords_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_griffon_lords = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_sh_griffon_lords"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_griffon_lords_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_nullificators_lieut = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_rpd_sh_nullificators_lieut"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_nullificators_lieut_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_brazen_skulls = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               NM = "d_shldr_sh_brazen_skulls_nm"
               diffOverride = "d_shldr_sh_brazen_skulls"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_brazen_skulls_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_death_strike = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_sh_death_strike"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_death_strike_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_black_vipers = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_sh_black_vipers"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_black_vipers_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_destroyers = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_sh_destroyers"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_destroyers_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_illuminators = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               diffOverride = "d_shldr_sh_illuminators"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_illuminators_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_wolfspears = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_wolfspears_nm"
               diffOverride = "d_shldr_sh_wolfspears"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_wolfspears_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_charnel_guard = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_charnel_guard_nm"
               diffOverride = "d_shldr_sh_charnel_guard"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_charnel_guard_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_penitents = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_penitents_nm"
               diffOverride = "d_shldr_sh_penitents"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_penitents_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_orar = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_orar_nm"
               diffOverride = "d_shldr_sh_orar"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_orar_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_iron_hounds = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_iron_hounds_nm"
               diffOverride = "d_shldr_sh_iron_hounds"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_iron_hounds_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_star_phantoms = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_star_phantoms_nm"
               diffOverride = "d_shldr_sh_star_phantoms"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_star_phantoms_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_star_phantoms_sm = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_star_phantoms_sm_nm"
               diffOverride = "d_shldr_sh_star_phantoms_sm"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_star_phantoms_sm_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_iron_lords = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_iron_lords_nm"
               diffOverride = "d_shldr_sh_iron_lords"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_iron_lords_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_user_01 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_user_texture_01_nm"
               diffOverride = "d_shldr_user_texture_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_user_texture_01_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_user_02 = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_user_texture_02_nm"
               diffOverride = "d_shldr_user_texture_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_user_texture_02_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_malevolent = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_malevolent_nm"
               diffOverride = "d_shldr_sh_malevolent"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_malevolent_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_relictors = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_relictors_nm"
               diffOverride = "d_shldr_sh_relictors"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_relictors_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_confessors = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_confessors_nm"
               diffOverride = "d_shldr_sh_confessors"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_confessors_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_boathousand = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_boathousand_nm"
               diffOverride = "d_shldr_sh_boathousand"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_boathousand_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_executioners = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_executioners_nm"
               diffOverride = "d_shldr_sh_executioners"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_executioners_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_blood_tigers = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_blood_tigers_nm"
               diffOverride = "d_shldr_sh_blood_tigers"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_blood_tigers_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_blood_tigers_x = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_blood_tigers_x_nm"
               diffOverride = "d_shldr_sh_blood_tigers_x"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_blood_tigers_x_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_blood_tigers_axe = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_blood_tigers_axe_nm"
               diffOverride = "d_shldr_sh_blood_tigers_axe"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_blood_tigers_axe_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_red_wolves = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_red_wolves_nm"
               diffOverride = "d_shldr_sh_red_wolves"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_red_wolves_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_unknown_tc = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_unknown_tc_nm"
               diffOverride = "d_shldr_sh_unknown_tc"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_unknown_tc_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_soul_drinkers = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_soul_drinkers_nm"
               diffOverride = "d_shldr_sh_soul_drinkers"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_soul_drinkers_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_marines_errant = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_marines_errant_nm"
               diffOverride = "d_shldr_sh_marines_errant"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_marines_errant_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_angels_of_fire = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_angels_of_fire_nm"
               diffOverride = "d_shldr_sh_angels_of_fire"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_angels_of_fire_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
   sh_thanatos = {
      preset = "default"
      game_material = "marine_armor"
      shaders = {
         glt = {
            blendMode = "blend"
            detail = {
               density = 5.000000
            }
            detailDiffuse = {
               useDetailMask = false
            }
            tex = {
               spec = "d_decals_spec"
               det = "detail_10_det"
               xNM = "d_shldr_sh_thanatos_nm"
               diffOverride = "d_shldr_sh_thanatos"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_thanatos_cc"
               layer0 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer1 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer2 = {
                  tintBlendMode = "linear_blend"
                  blendMode = "tex_blend"
               }
               layer3 = {
                  tintBlendMode = "linear_blend"
                  enabled = false
               }
            }
            __type_id = "glt_sh_templ"
         }
      }
      __type_id = "material_templ"
   }
}
usage = "MD"
version = 1
