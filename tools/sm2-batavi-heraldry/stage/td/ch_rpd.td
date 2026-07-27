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
               diffOverride = "d_shldr_batavi_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_batavi_02_cc"
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
               diffOverride = "d_shldr_luna_wolves_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_luna_wolves_02_cc"
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
   retributors_02 = {
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
               diffOverride = "d_rpd_retributors_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_retributors_01_cc"
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
   doomeagles_02 = {
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
               diffOverride = "d_shldr_doomeagles_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_doomeagles_02_cc"
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
   genesis_02 = {
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
               diffOverride = "d_shldr_genesis_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_genesis_02_cc"
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
   libators_02 = {
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
               diffOverride = "d_shldr_libators_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_libators_02_cc"
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
   praetors_02 = {
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
               diffOverride = "d_shldr_praetors_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_praetors_02_cc"
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
   scythes_02 = {
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
               diffOverride = "d_shldr_scythes_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_scythes_02_cc"
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
   tome_keepers_02 = {
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
               diffOverride = "d_shldr_tome_keepers_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_tome_keepers_02_cc"
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
   imp_fists_02 = {
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
               diffOverride = "d_shldr_imperial_fists_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_imperial_fists_02_cc"
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
   blood_angels_02 = {
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
               diffOverride = "d_shldr_praetors_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_praetors_02_cc"
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
   iron_hands_02 = {
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
               diffOverride = "d_shldr_iron_hands_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_iron_hands_02_cc"
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
   iron_hands_03 = {
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
               diffOverride = "d_shldr_iron_hands_03"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_iron_hands_03_cc"
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
   salamanders_02 = {
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
               diffOverride = "d_shldr_salamanders_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_salamanders_02_cc"
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
   raven_guard_02 = {
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
               diffOverride = "d_shldr_raven_guard_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_raven_guard_02_cc"
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
   dark_angels_02 = {
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
               diffOverride = "d_shldr_dark_angels_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_dark_angels_02_cc"
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
   alpha_legion_02 = {
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
               diffOverride = "d_shldr_alpha_legion_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_alpha_legion_02_cc"
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
   black_legion_02 = {
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
               diffOverride = "d_shldr_black_legion_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_black_legion_02_cc"
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
   ironwarriors_02 = {
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
               diffOverride = "d_shldr_iron_warriors_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_iron_warriors_02_cc"
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
   night_lords_02 = {
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
               diffOverride = "d_shldr_night_lords_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_night_lords_02_cc"
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
   world_eaters_02 = {
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
               diffOverride = "d_shldr_world_eaters_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_world_eaters_02_cc"
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
   death_guard_02 = {
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
               diffOverride = "d_shldr_death_guard_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_death_guard_02_cc"
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
               diffOverride = "d_shldr_carcharodons_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_carcharodons_02_cc"
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
   bgf_support_01 = {
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
               diffOverride = "d_rpd_black_guard_fire_support_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_black_guard_fire_support_01_cc"
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
   rf_support_02 = {
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
               diffOverride = "d_rpd_revilers_fire_support_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_revilers_fire_support_02_cc"
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
   rg_wings_01 = {
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
               diffOverride = "d_rpd_rg_wings_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_rg_wings_01_cc"
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
   ds_btln_01 = {
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
               diffOverride = "d_rpd_death_spectres_battleline_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_death_spectres_battleline_01_cc"
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
   rs_btln_02 = {
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
               diffOverride = "d_rpd_rift_stalkers_battleline_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_rift_stalkers_battleline_02_cc"
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
   rnh_close_01 = {
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
               diffOverride = "d_rpd_rift_necropolis_hawks_close_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_rift_necropolis_hawks_close_01_cc"
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
   rnh_close_02 = {
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
               diffOverride = "d_rpd_rift_necropolis_hawks_close_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_rift_necropolis_hawks_close_02_cc"
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
   rir_veteran_01 = {
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
               diffOverride = "d_rpd_rift_iron_ravens_veteran_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_rift_iron_ravens_veteran_01_cc"
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
   kotr_veteran_02 = {
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
               diffOverride = "d_rpd_rift_knights_of_the_raven_veteran_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_rift_knights_of_the_raven_veteran_02_cc"
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
   aoaf_support_01 = {
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
               diffOverride = "d_rpd_angels_of_absolution_fire_support_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_angels_of_absolution_fire_support_01_cc"
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
   rf_support_03 = {
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
               diffOverride = "d_rpd_revilers_fire_support_03"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_revilers_fire_support_03_cc"
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
   ds_close_01 = {
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
               diffOverride = "d_rpd_death_spectres_close_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_death_spectres_close_01_cc"
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
   dark_angels_03 = {
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
               diffOverride = "d_rpd_dark_angels_veteran_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_dark_angels_veteran_02_cc"
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
   alpha_legion_03 = {
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
               diffOverride = "d_rpd_chaos_alpha_legion_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_chaos_alpha_legion_01_cc"
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
   black_legion_03 = {
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
               diffOverride = "d_rpd_chaos_black_legion_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_chaos_black_legion_01_cc"
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
   ironwarriors_03 = {
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
               diffOverride = "d_rpd_chaos_iron_warriors_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_chaos_iron_warriors_01_cc"
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
   night_lords_03 = {
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
               diffOverride = "d_rpd_chaos_night_lords_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_chaos_night_lords_01_cc"
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
   world_eaters_03 = {
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
               diffOverride = "d_rpd_chaos_world_eaters_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_chaos_world_eaters_01_cc"
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
   death_guard_03 = {
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
               diffOverride = "d_rpd_chaos_death_guard_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_chaos_death_guard_01_cc"
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
   bring_jgmnt_01 = {
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
               diffOverride = "d_rpd_bringers_of_judgement_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_bringers_of_judgement_01_cc"
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
               diffOverride = "d_shldr_blood_ravens_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_blood_ravens_01r_cc"
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
               diffOverride = "d_shldr_red_scorpions_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_red_scorpions_01r_cc"
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
               diffOverride = "d_shldr_storm_giants_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_storm_giants_01r_cc"
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
               diffOverride = "d_shldr_white_scars_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_white_scars_01r_cc"
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
               diffOverride = "d_shldr_space_wolves_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_space_wolves_01r_cc"
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
               diffOverride = "d_shldr_imperial_fists_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_imperial_fists_01r_cc"
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
               diffOverride = "d_shldr_iron_hands_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_iron_hands_01r_cc"
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
               diffOverride = "d_shldr_praetors_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_praetors_01r_cc"
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
               diffOverride = "d_shldr_ironhounds_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_ironhounds_01r_cc"
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
               diffOverride = "d_shldr_hawk_lords_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_hawk_lords_01r_cc"
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
               diffOverride = "d_lpd_black_guard_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_black_guard_01r_cc"
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
               diffOverride = "d_lpd_revilers_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_revilers_01r_cc"
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
               diffOverride = "d_lpd_raptors_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_raptors_01r_cc"
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
               diffOverride = "d_lpd_necropolis_hawks_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_necropolis_hawks_01r_cc"
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
               diffOverride = "d_lpd_angels_of_absolution_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_angels_of_absolution_01r_cc"
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
               diffOverride = "d_lpd_the_unnamed_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_unnamed_01r_cc"
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
               diffOverride = "d_lpd_bringers_of_judgement_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_bringers_of_judgement_01r_cc"
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
   battleline_01 = {
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
               diffOverride = "d_rpd_battleline_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_battleline_01_cc"
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
   battleline_02 = {
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
               diffOverride = "d_rpd_battleline_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_battleline_02_cc"
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
   battleline_03 = {
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
               diffOverride = "d_rpd_battleline_03"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_battleline_03_cc"
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
   wolf_scout_01 = {
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
               diffOverride = "d_rpd_wolf_scout_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_wolf_scout_01_cc"
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
   wolf_scout_02 = {
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
               diffOverride = "d_rpd_wolf_scout_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_wolf_scout_02_cc"
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
   close_suport_01 = {
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
               diffOverride = "d_rpd_close_support_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_close_support_01_cc"
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
   close_suport_02 = {
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
               diffOverride = "d_rpd_close_support_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_close_support_02_cc"
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
   fire_support_01 = {
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
               diffOverride = "d_rpd_fire_support_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_fire_support_01_cc"
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
   fire_support_02 = {
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
               diffOverride = "d_rpd_fire_support_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_fire_support_02_cc"
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
   sw_veteran_01 = {
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
               diffOverride = "d_rpd_sw_veteran_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sw_veteran_01_cc"
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
   sw_veteran_02 = {
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
               diffOverride = "d_rpd_sw_veteran_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sw_veteran_02_cc"
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
   sw_veteran_03 = {
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
               diffOverride = "d_rpd_sw_veteran_03"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sw_veteran_03_cc"
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
   sw_veteran_04 = {
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
               diffOverride = "d_rpd_sw_veteran_04"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sw_veteran_04_cc"
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
   wolf_fire_sup_3 = {
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
               diffOverride = "d_rpd_wolf_fire_support_3"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_wolf_fire_support_3_cc"
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
   wolf_fire_sup_4 = {
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
               diffOverride = "d_rpd_wolf_fire_support_4"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_wolf_fire_support_4_cc"
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
   salamanders_01r = {
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
               diffOverride = "d_shldr_salamanders_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_salamanders_01r_cc"
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
               diffOverride = "d_lpd_the_blackmanes_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_blackmanes_01r_cc"
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
               diffOverride = "d_lpd_the_deathwolves_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_deathwolves_01r_cc"
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
               diffOverride = "d_lpd_the_ironwolves_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_ironwolves_01r_cc"
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
               diffOverride = "d_lpd_the_grimbloods_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_grimbloods_01r_cc"
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
               diffOverride = "d_lpd_the_seawolves_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_seawolves_01r_cc"
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
               diffOverride = "d_lpd_the_red_moons_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_red_moons_01r_cc"
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
               diffOverride = "d_lpd_the_drakeslayers_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_drakeslayers_01r_cc"
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
               diffOverride = "d_lpd_the_firehowlers_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_firehowlers_01r_cc"
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
               diffOverride = "d_lpd_the_stormwolves_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_the_stormwolves_01r_cc"
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
               diffOverride = "d_lpd_company_wolf_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_company_wolf_01r_cc"
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
   default3 = {
      preset = "default"
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
               diffOverride = "d_lpd_flesh_tearers_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_flesh_tearers_01r_cc"
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
               diffOverride = "d_lpd_lamenters_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_lamenters_01r_cc"
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
               diffOverride = "d_lpd_blood_scythes_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_blood_scythes_01r_cc"
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
               diffOverride = "d_lpd_blood_dragons_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_blood_dragons_01r_cc"
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
   ba_2_5_comp_01 = {
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
               diffOverride = "d_rpd_ba_2_5_company_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ba_2_5_company_01_cc"
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
   ba_arrow_01 = {
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
               diffOverride = "d_rpd_ba_arrow_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ba_arrow_01_cc"
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
   ba_cross_01 = {
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
               diffOverride = "d_rpd_ba_cross_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ba_cross_01_cc"
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
   ba_10_comp_01 = {
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
               diffOverride = "d_rpd_ba_10_company_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ba_10_company_01_cc"
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
   ba_death_com_01 = {
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
               diffOverride = "d_rpd_ba_death_company_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ba_death_company_01_cc"
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
   ba_lieuten_01 = {
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
               diffOverride = "d_rpd_ba_lieutenant_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ba_lieutenant_01_cc"
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
   ba_6_9_comp_01 = {
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
               diffOverride = "d_rpd_ba_6_9_company_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ba_6_9_company_01_cc"
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
   ws_lghtsaber_01 = {
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
               diffOverride = "d_rpd_ws_lightning_saber_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ws_lightning_saber_01_cc"
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
   ws_sabers_01 = {
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
               diffOverride = "d_rpd_ws_sabers_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ws_sabers_01_cc"
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
   ws_triangles_01 = {
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
               diffOverride = "d_rpd_ws_triangles_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ws_triangles_01_cc"
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
   ws_dhunters_01r = {
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
   ws_dstrers_01r = {
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
   ws_mantswar_01r = {
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
   ws_maraders_01r = {
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
               diffOverride = "d_lpd_ws_marauders_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ws_marauders_01r_cc"
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
   ws_rampqers_01r = {
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
               diffOverride = "d_lpd_ws_rampaqers_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ws_rampaqers_01r_cc"
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
   ws_slrhawks_01r = {
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
               diffOverride = "d_lpd_ws_solar_hawks_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ws_solar_hawks_01r_cc"
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
   ws_stmlords_01r = {
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
   ws_sreapers_01r = {
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
               diffOverride = "d_rpd_ws_storm_lords_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ws_storm_lords_01_cc"
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
   um_sergeant_01r = {
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
   if_battl_01 = {
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
               diffOverride = "rpd_if_battleline_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "rpd_if_battleline_01_cc"
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
   if_battl_02 = {
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
               diffOverride = "rpd_if_battleline_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "rpd_if_battleline_02_cc"
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
   if_close_sup_01 = {
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
               diffOverride = "rpd_if_close_support_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "rpd_if_close_support_01_cc"
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
   if_close_sup_02 = {
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
               diffOverride = "rpd_if_close_support_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "rpd_if_close_support_02_cc"
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
   if_close_sup_03 = {
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
               diffOverride = "rpd_if_close_support_03"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "rpd_if_close_support_03_cc"
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
   if_command_01 = {
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
               diffOverride = "rpd_if_command_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "rpd_if_command_01_cc"
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
   if_fire_sup_01 = {
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
               diffOverride = "rpd_if_fire_support_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "rpd_if_fire_support_01_cc"
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
   if_fire_sup_02 = {
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
               diffOverride = "rpd_if_fire_support_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "rpd_if_fire_support_02_cc"
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
   if_fire_sup_03 = {
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
               diffOverride = "rpd_if_fire_support_03"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "rpd_if_fire_support_03_cc"
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
   if_fire_sup_04 = {
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
               diffOverride = "rpd_if_fire_support_04"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "rpd_if_fire_support_04_cc"
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
   if_veteran_01 = {
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
               diffOverride = "rpd_if_veteran_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "rpd_if_veteran_01_cc"
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
   if_cel_lio_01r = {
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
               diffOverride = "lpd_if_celestial_lions_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "lpd_if_celestial_lions_01r_cc"
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
   if_subjug_01r = {
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
               diffOverride = "lpd_if_subjugators_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "lpd_if_subjugators_01r_cc"
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
   if_so_of_ph_01r = {
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
               diffOverride = "lpd_if_sons_of_phoenix_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "lpd_if_sons_of_phoenix_01r_cc"
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
   red_templar_01r = {
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
   if_invaders_01r = {
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
   if_ham_of_d_01r = {
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
               diffOverride = "lpd_if_hammers_of_dorn_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "lpd_if_hammers_of_dorn_01r_cc"
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
   ih_avernii_01 = {
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
               diffOverride = "d_rpd_ih_avernii_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ih_avernii_01_cc"
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
   ih_borrgos_01 = {
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
               diffOverride = "d_rpd_ih_borrgos_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ih_borrgos_01_cc"
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
   ih_dorrvok_01 = {
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
               diffOverride = "d_rpd_ih_dorrvok_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ih_dorrvok_01_cc"
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
   ih_garrsak_01 = {
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
               diffOverride = "d_rpd_ih_garrsak_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ih_garrsak_01_cc"
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
   ih_haarmek_01 = {
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
               diffOverride = "d_rpd_ih_haarmek_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ih_haarmek_01_cc"
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
   ih_kaargul_01 = {
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
               diffOverride = "d_rpd_ih_kaargul_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ih_kaargul_01_cc"
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
   ih_morlaag_01 = {
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
               diffOverride = "d_rpd_ih_morlaag_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ih_morlaag_01_cc"
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
   ih_raukaan_01 = {
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
               diffOverride = "d_rpd_ih_raukaan_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ih_raukaan_01_cc"
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
   ih_sorrgol_01 = {
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
               diffOverride = "d_rpd_ih_sorrgol_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ih_sorrgol_01_cc"
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
   ih_vurgaan_01 = {
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
               diffOverride = "d_rpd_ih_vurgaan_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_ih_vurgaan_01_cc"
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
   slm_btlbrter_01 = {
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
               diffOverride = "d_rpd_slm_battlebrother_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_slm_battlebrother_01_cc"
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
   slm_battle_c_01 = {
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
               diffOverride = "d_rpd_slm_battle_company_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_slm_battle_company_01_cc"
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
   slm_ltnant_01 = {
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
               diffOverride = "d_rpd_slm_lieutenant_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_slm_lieutenant_01_cc"
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
   slm_squad_m_01 = {
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
               diffOverride = "d_rpd_slm_squad_marking_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_slm_squad_marking_01_cc"
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
   slm_squad_m_02 = {
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
               diffOverride = "d_rpd_slm_squad_marking_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_slm_squad_marking_02_cc"
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
   slm_squad_m_03 = {
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
               diffOverride = "d_rpd_slm_squad_marking_03"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_slm_squad_marking_03_cc"
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
   slm_squad_m_04 = {
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
               diffOverride = "d_rpd_slm_squad_marking_04"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_slm_squad_marking_04_cc"
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
   slm_threfire_01 = {
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
               diffOverride = "d_rpd_slm_three_fire_01"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_slm_three_fire_01_cc"
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
   ih_ironlords01r = {
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
               diffOverride = "d_lpd_ih_iron_lords_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ih_iron_lords_01r_cc"
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
   ih_redtalons01r = {
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
               diffOverride = "d_lpd_ih_red_talons_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ih_red_talons_01r_cc"
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
   ih_sonsmedus_r = {
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
   ih_brzn_claws_r = {
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
               diffOverride = "d_lpd_ih_brazen_claws_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ih_brazen_claws_01r_cc"
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
   slm_bvipers_01r = {
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
               diffOverride = "d_lpd_slm_black_vipers_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_slm_black_vipers_01r_cc"
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
   slm_cvnt_fire_r = {
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
   slm_drkrakens_r = {
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
   slm_drgnspear_r = {
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
   engineer_01r = {
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
   ue_spears_01r = {
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
   red_corsars_01r = {
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
               diffOverride = "d_lpd_08_red_corsairs_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_08_red_corsairs_01r_cc"
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
   ba_bl_drink_01r = {
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
   ba_ang_enc_01r = {
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
   ba_ang_verm_01r = {
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
   ba_car_blad_01r = {
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
   ba_cru_blad_01r = {
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
   ba_k_of_ch_01r = {
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
   ba_sab_knig_01r = {
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
   ch_br_beast_01r = {
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
   ch_comp_mis_01r = {
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
   ch_cr_slaug_01r = {
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
   ch_deathmon_01r = {
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
   ch_emp_chil_01r = {
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
               diffOverride = "d_lpd_chaos_emperors_children_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_emperors_children_01r_cc"
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
   ch_flaw_hos_01r = {
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
               diffOverride = "d_lpd_chaos_flawless_host_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_flawless_host_01r_cc"
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
   ch_mag_houn_01r = {
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
               diffOverride = "d_lpd_chaos_magma_hounds_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_magma_hounds_01r_cc"
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
   ch_cleaved_01r = {
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
   ch_gr_death_01r = {
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
   ch_purge_01r = {
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
   ch_scourged_01r = {
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
               diffOverride = "d_lpd_chaos_the_scourged_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_chaos_the_scourged_01r_cc"
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
   ch_word_bea_01r = {
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
   da_dis_cali_01r = {
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
               diffOverride = "d_lpd_da_disciples_of_caliban_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_da_disciples_of_caliban_01r_cc"
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
   da_guar_cov_01r = {
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
   da_knig_ab_01r = {
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
   da_panit_bl_01r = {
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
   da_prime_ab_01r = {
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
   sw_wolf_01r = {
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
   ul_aur_chap_01r = {
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
   ul_how_grif_01r = {
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
               diffOverride = "d_lpd_ultramarines_howling_griffons_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ultramarines_howling_griffons_01r_cc"
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
   ul_pat_ulix_01r = {
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
   ul_sil_skul_01r = {
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
   ul_sil_temp_01r = {
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
   un_bl_drag_01r = {
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
               diffOverride = "d_lpd_unknown_black_dragons_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_unknown_black_dragons_01r_cc"
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
   un_fir_lord_01r = {
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
               diffOverride = "d_lpd_unknown_fire_lords_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_unknown_fire_lords_01r_cc"
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
   un_mar_mal_01r = {
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
               diffOverride = "d_lpd_unknown_marines_malevolent_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_unknown_marines_malevolent_01r_cc"
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
   un_star_dr_01r = {
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
               diffOverride = "d_lpd_unknown_star_dragons_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_unknown_star_dragons_01r_cc"
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
   un_tiger_ar_01r = {
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
               diffOverride = "d_lpd_unknown_tigers_argent_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_unknown_tigers_argent_01r_cc"
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
   un_wh_te_su_01r = {
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
   ch_iron_war_01r = {
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
   da_consecr_01r = {
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
               diffOverride = "d_lpd_da_consecrators_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_da_consecrators_01r_cc"
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
   ul_bl_wh_co_01r = {
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
               diffOverride = "d_lpd_ultramarines_black_white_consuls_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ultramarines_black_white_consuls_01r_cc"
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
   ul_iron_sn_01r = {
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
               diffOverride = "d_lpd_ultramarines_iron_snakes_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_ultramarines_iron_snakes_01r_cc"
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
   un_mentors_01r = {
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
               diffOverride = "d_lpd_unknown_mentors_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_unknown_mentors_01r_cc"
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
   un_dr_lords_01r = {
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
               diffOverride = "d_lpd_unknown_dragon_lords_01r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_lpd_unknown_dragon_lords_01r_cc"
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
   un_br_skul_01r = {
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
               diffOverride = "d_shldr_iron_snakes_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_iron_snakes_r_cc"
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
               diffOverride = "d_shldr_obsidian_jaguars_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_obsidian_jaguars_r_cc"
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
               diffOverride = "d_shldr_byzantium_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_byzantium_r_cc"
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
   emperors_spears_runes = {
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
               NM = "d_rpd_emperors_spears_runes_nm"
               diffOverride = "d_rpd_emperors_spears_runes"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_emperors_spears_runes_cc"
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
   sh_fire_support_00 = {
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
               diffOverride = "d_rpd_sh_fire_support_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_fire_support_00_cc"
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
   sh_fire_support_06 = {
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
               diffOverride = "d_rpd_sh_fire_support_06"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_fire_support_06_cc"
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
   sh_fire_support_06_low = {
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
               diffOverride = "d_rpd_sh_fire_support_06_low"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_fire_support_06_low_cc"
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
   sh_crim_fists = {
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
               diffOverride = "d_shldr_sh_crim_fists_xxx"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_crim_fists_cc"
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
   sh_crim_fists_battle = {
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
               mask = "d_rpd_sh_crim_fists_battle_cc"
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
   sh_crim_fists_close = {
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
               mask = "d_rpd_sh_crim_fists_close_cc"
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
   sh_crim_fists_fire = {
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
               mask = "d_rpd_sh_crim_fists_fire_cc"
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
   sh_crim_fists_vet = {
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
               mask = "d_rpd_sh_crim_fists_vet_cc"
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
   sh_crim_fists_com = {
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
               mask = "d_rpd_sh_crim_fists_com_cc"
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
               diffOverride = "d_shldr_celestial_lions_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_celestial_lions_r_cc"
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
               diffOverride = "d_shldr_phoenix_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_phoenix_r_cc"
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
   covenant_of_fire = {
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
               diffOverride = "d_shldr_phoenix_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_phoenix_r_cc"
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
   lowgothic_02 = {
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
               diffOverride = "d_shldr_low_gothic_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_low_gothic_02_cc"
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
   lowgothic_06 = {
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
               diffOverride = "d_shldr_low_gothic_06"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_low_gothic_06_cc"
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
               diffOverride = "d_shldr_sh_angels_rev_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_angels_rev_r_cc"
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
   sh_nullificators_com = {
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
               diffOverride = "d_rpd_sh_nullificators_com"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_nullificators_com_cc"
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
               diffOverride = "d_shldr_sh_dragon_lords_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_dragon_lords_r_cc"
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
               diffOverride = "d_shldr_sh_griffon_lords_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_griffon_lords_r_cc"
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
   sh_griffon_lords_battle_02 = {
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
               diffOverride = "d_rpd_sh_griffon_lords_battle_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_griffon_lords_battle_02_cc"
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
   sh_griffon_lords_close_02 = {
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
               diffOverride = "d_rpd_sh_griffon_lords_close_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_griffon_lords_close_02_cc"
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
   sh_griffon_lords_fire_02 = {
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
               diffOverride = "d_rpd_sh_griffon_lords_fire_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_griffon_lords_fire_02_cc"
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
   sh_griffon_lords_vet_02 = {
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
               diffOverride = "d_rpd_sh_griffon_lords_vet_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_griffon_lords_vet_02_cc"
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
   sh_griffon_lords_battle_06 = {
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
               diffOverride = "d_rpd_sh_griffon_lords_battle_06"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_griffon_lords_battle_06_cc"
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
   sh_griffon_lords_close_06 = {
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
               diffOverride = "d_rpd_sh_griffon_lords_close_06"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_griffon_lords_close_06_cc"
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
   sh_griffon_lords_fire_06 = {
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
               diffOverride = "d_rpd_sh_griffon_lords_fire_06"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_griffon_lords_fire_06_cc"
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
   sh_griffon_lords_vet_06 = {
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
               diffOverride = "d_rpd_sh_griffon_lords_vet_06"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_griffon_lords_vet_06_cc"
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
   sh_sons_of_guilliman_b_02 = {
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
               diffOverride = "d_rpd_sh_sons_of_guilliman_b_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_sons_of_guilliman_b_02_cc"
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
   sh_sons_of_guilliman_b_03 = {
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
               diffOverride = "d_rpd_sh_sons_of_guilliman_b_03"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_sons_of_guilliman_b_03_cc"
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
   sh_sons_of_guilliman_b_04 = {
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
               diffOverride = "d_rpd_sh_sons_of_guilliman_b_04"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_sons_of_guilliman_b_04_cc"
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
   sh_sons_of_guilliman_b_05 = {
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
               diffOverride = "d_rpd_sh_sons_of_guilliman_b_05"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_sons_of_guilliman_b_05_cc"
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
   sh_sons_of_guilliman_b_06 = {
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
               diffOverride = "d_rpd_sh_sons_of_guilliman_b_06"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_sons_of_guilliman_b_06_cc"
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
   sh_sons_of_guilliman_c_06 = {
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
               diffOverride = "d_rpd_sh_sons_of_guilliman_c_06"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_sons_of_guilliman_c_06_cc"
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
   sh_sons_of_guilliman_f_06 = {
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
               diffOverride = "d_rpd_sh_sons_of_guilliman_f_06"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_sons_of_guilliman_f_06_cc"
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
   sh_sons_of_guilliman_f_06p = {
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
               diffOverride = "d_rpd_sh_sons_of_guilliman_f_06p"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_sons_of_guilliman_f_06p_cc"
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
   sh_sons_of_guilliman_v_06 = {
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
               diffOverride = "d_rpd_sh_sons_of_guilliman_v_06"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_sons_of_guilliman_v_06_cc"
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
   sh_pristine_highgothic_bat_02 = {
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
               diffOverride = "d_rpd_sh_pristine_battle_high_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_battle_high_02_cc"
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
   sh_pristine_highgothic_bat_03 = {
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
               diffOverride = "d_rpd_sh_pristine_battle_high_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_battle_high_03_cc"
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
   sh_pristine_highgothic_bat_04 = {
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
               diffOverride = "d_rpd_sh_pristine_battle_high_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_battle_high_04_cc"
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
   sh_pristine_highgothic_bat_05 = {
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
               diffOverride = "d_rpd_sh_pristine_battle_high_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_battle_high_05_cc"
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
   sh_pristine_highgothic_bat_06 = {
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
               diffOverride = "d_rpd_sh_pristine_battle_high_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_battle_high_06_cc"
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
   sh_pristine_highgothic_cs_06 = {
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
               diffOverride = "d_rpd_sh_pristine_close_high_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_close_high_06_cc"
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
   sh_pristine_highgothic_fs_06 = {
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
               diffOverride = "d_rpd_sh_pristine_fire_high_06"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_fire_high_06_cc"
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
   sh_pristine_highgothic_fs_06a = {
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
               diffOverride = "d_rpd_sh_pristine_fire_high_06a"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_fire_high_06a_cc"
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
   sh_pristine_highgothic_vet_06 = {
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
               diffOverride = "d_rpd_sh_pristine_vet_high_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_vet_high_06_cc"
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
   sh_pristine_lowgothic_bat_02 = {
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
               diffOverride = "d_rpd_sh_pristine_battle_high_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_battle_low_02_cc"
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
   sh_pristine_lowgothic_bat_03 = {
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
               diffOverride = "d_rpd_sh_pristine_battle_high_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_battle_low_03_cc"
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
   sh_pristine_lowgothic_bat_04 = {
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
               diffOverride = "d_rpd_sh_pristine_battle_high_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_battle_low_04_cc"
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
   sh_pristine_lowgothic_bat_05 = {
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
               diffOverride = "d_rpd_sh_pristine_battle_high_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_battle_low_05_cc"
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
   sh_pristine_lowgothic_bat_06 = {
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
               diffOverride = "d_rpd_sh_pristine_battle_high_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_battle_low_06_cc"
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
   sh_pristine_lowgothic_cs_06 = {
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
               diffOverride = "d_rpd_sh_pristine_close_low_06"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_close_low_06_cc"
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
   sh_pristine_lowgothic_fs_06 = {
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
               diffOverride = "d_rpd_sh_pristine_fire_low_06"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_fire_low_06_cc"
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
   sh_pristine_lowgothic_fs_06a = {
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
               diffOverride = "d_rpd_sh_pristine_fire_high_06a"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_fire_low_06a_cc"
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
   sh_pristine_lowgothic_vet_06 = {
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
               diffOverride = "d_rpd_sh_pristine_vet_high_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_pristine_vet_low_06_cc"
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
               diffOverride = "d_shldr_sh_death_strike_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_death_strike_r_cc"
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
   sh_death_strike_b = {
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
               diffOverride = "d_rpd_sh_death_strike_b"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_death_strike_b_cc"
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
   sh_death_strike_c = {
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
               diffOverride = "d_rpd_sh_death_strike_c"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_death_strike_c_cc"
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
   sh_death_strike_f = {
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
               diffOverride = "d_rpd_sh_death_strike_f"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_death_strike_f_cc"
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
   sh_death_strike_v = {
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
               diffOverride = "d_rpd_sh_death_strike_v"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_death_strike_v_cc"
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
               diffOverride = "d_shldr_sh_black_vipers_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_black_vipers_r_cc"
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
   sh_wolfspears_bl = {
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
               diffOverride = "d_rpd_sh_wolfspears_bl"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_wolfspears_bl_cc"
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
   sh_wolfspears_cs = {
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
               diffOverride = "d_rpd_sh_wolfspears_cs"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_wolfspears_cs_cc"
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
   sh_wolfspears_fs = {
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
               diffOverride = "d_rpd_sh_wolfspears_fs"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_wolfspears_fs_cc"
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
   sh_wolfspears_vt = {
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
               diffOverride = "d_rpd_sh_wolfspears_vt"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_wolfspears_vt_cc"
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
   sh_charnel_com = {
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
               xNM = "d_rpd_sh_charnel_guard_com_nm"
               diffOverride = "d_rpd_sh_charnel_guard_com"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_charnel_guard_com_cc"
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
               xNM = "d_shldr_sh_penitents_r_nm"
               diffOverride = "d_shldr_sh_penitents_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_penitents_r_cc"
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
   sh_orar_02 = {
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
               xNM = "d_rpd_sh_orar_02_nm"
               diffOverride = "d_rpd_sh_orar_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_orar_02_cc"
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
   sh_orar_02a = {
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
               xNM = "d_rpd_sh_orar_02a_nm"
               diffOverride = "d_rpd_sh_orar_02a"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_orar_02a_cc"
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
   sh_orar_03 = {
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
               xNM = "d_rpd_sh_orar_03_nm"
               diffOverride = "d_rpd_sh_orar_03"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_orar_03_cc"
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
   sh_orar_03a = {
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
               xNM = "d_rpd_sh_orar_03a_nm"
               diffOverride = "d_rpd_sh_orar_03a"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_orar_03a_cc"
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
   sh_orar_04 = {
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
               xNM = "d_rpd_sh_orar_04_nm"
               diffOverride = "d_rpd_sh_orar_04"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_orar_04_cc"
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
   sh_orar_04a = {
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
               xNM = "d_rpd_sh_orar_04a_nm"
               diffOverride = "d_rpd_sh_orar_04a"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_orar_04a_cc"
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
   sh_orar_05 = {
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
               xNM = "d_rpd_sh_orar_05_nm"
               diffOverride = "d_rpd_sh_orar_05"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_orar_05_cc"
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
   sh_orar_05a = {
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
               xNM = "d_rpd_sh_orar_05a_nm"
               diffOverride = "d_rpd_sh_orar_05a"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_orar_05a_cc"
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
   sh_orar_06 = {
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
               xNM = "d_rpd_sh_orar_06_nm"
               diffOverride = "d_rpd_sh_orar_06"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_orar_06_cc"
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
   sh_orar_06a = {
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
               xNM = "d_rpd_sh_orar_06a_nm"
               diffOverride = "d_rpd_sh_orar_06a"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_orar_06a_cc"
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
               xNM = "d_shldr_sh_iron_hounds_r_nm"
               diffOverride = "d_shldr_sh_iron_hounds_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_iron_hounds_r_cc"
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
               xNM = "d_shldr_user_texture_01_r_nm"
               diffOverride = "d_shldr_user_texture_01_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_user_texture_01_r_cc"
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
               xNM = "d_shldr_user_texture_02_r_nm"
               diffOverride = "d_shldr_user_texture_02_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_user_texture_02_r_cc"
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
   sh_salamanders_02 = {
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
               xNM = "d_rpd_sh_salamanders_02_nm"
               diffOverride = "d_rpd_sh_salamanders_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_salamanders_02_cc"
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
   sh_salamanders_03 = {
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
               xNM = "d_rpd_sh_salamanders_03_nm"
               diffOverride = "d_rpd_sh_salamanders_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_salamanders_03_cc"
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
   sh_salamanders_04 = {
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
               xNM = "d_rpd_sh_salamanders_04_nm"
               diffOverride = "d_rpd_sh_salamanders_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_salamanders_04_cc"
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
   sh_salamanders_05 = {
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
               xNM = "d_rpd_sh_salamanders_05_nm"
               diffOverride = "d_rpd_sh_salamanders_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_salamanders_05_cc"
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
   sh_salamanders_06 = {
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
               xNM = "d_rpd_sh_salamanders_06_nm"
               diffOverride = "d_rpd_sh_salamanders_00"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_salamanders_06_cc"
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
               xNM = "d_shldr_sh_malevolent_r_nm"
               diffOverride = "d_shldr_sh_malevolent_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_malevolent_r_cc"
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
               xNM = "d_shldr_sh_relictors_r_nm"
               diffOverride = "d_shldr_sh_relictors_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_relictors_r_cc"
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
               xNM = "d_shldr_sh_red_wolves_r_nm"
               diffOverride = "d_shldr_sh_red_wolves_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_red_wolves_r_cc"
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
               xNM = "d_shldr_sh_unknown_tc_r_nm"
               diffOverride = "d_shldr_sh_unknown_tc_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_unknown_tc_r_cc"
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
               xNM = "d_shldr_sh_marines_errant_r_nm"
               diffOverride = "d_shldr_sh_marines_errant_r"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_shldr_sh_marines_errant_r_cc"
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
   sh_angels_of_fire_02 = {
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
               xNM = "d_rpd_sh_angels_of_fire_02_nm"
               diffOverride = "d_rpd_sh_angels_of_fire_02"
            }
            fakeLight = {
               enable = true
            }
            customization = {
               mask = "d_rpd_sh_angels_of_fire_02_cc"
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
