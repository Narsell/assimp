project "assimp"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"

    targetdir ("../../../Binaries/" .. OutputDir .. "/%{prj.name}")
    objdir ("../../../Intermediates/" .. OutputDir .. "/%{prj.name}")

    includedirs
    {
		"_config_headers/",
		"_config_headers/assimp/",
		".",
		"contrib/",
		"contrib/irrXML/",
		"contrib/unzip/",
		"contrib/rapidjson/include/",
		"contrib/pugixml/src/",
		"contrib/zlib/",
		"contrib/utf8cpp/source",
		"code",
		"include",
    }

    files
    {
		-- Dependencies
		"contrib/unzip/**",
		"contrib/irrXML/**",
		"contrib/zlib/*",
		-- Common
		"code/Common/**",
		"code/PostProcessing/**",
		"code/Material/**",
		"code/CApi/**",
		"code/Geometry/**",
		-- Importers
		"code/AssetLib/IQM/**",
		"code/AssetLib/Assbin/**",

		"code/AssetLib/Collada/**",
		"code/AssetLib/Obj/**",
		"code/AssetLib/FBX/**",

		"code/Assbin/**"
    }

    removefiles
	{
        "code/Exporter/**",
        "code/*Exporter.*",
        "code/*Export.*",
    }

    defines
    {
        "_CRT_SECURE_NO_WARNINGS",
        "RAPIDJSON_HAS_STDSTRING=1",
        "ASSIMP_STATIC",
        "ASSIMP_BUILD_NO_EXPORT",
        "ASSIMP_BUILD_NO_USD_IMPORTER",
        "ASSIMP_BUILD_NO_PBRT_IMPORTER",
        "ASSIMP_BUILD_NO_3D_IMPORTER",
		"ASSIMP_BUILD_NO_3DS_IMPORTER",
		"ASSIMP_BUILD_NO_3MF_IMPORTER",
		"ASSIMP_BUILD_NO_AC_IMPORTER",
		"ASSIMP_BUILD_NO_AMF_IMPORTER",
		"ASSIMP_BUILD_NO_ASE_IMPORTER",
		-- "ASSIMP_BUILD_NO_ASSBIN_IMPORTER"
		"ASSIMP_BUILD_NO_B3D_IMPORTER",
		"ASSIMP_BUILD_NO_BLEND_IMPORTER",
		"ASSIMP_BUILD_NO_BVH_IMPORTER",
		"ASSIMP_BUILD_NO_C4D_IMPORTER",
		"ASSIMP_BUILD_NO_COB_IMPORTER",
		-- "ASSIMP_BUILD_NO_COLLADA_IMPORTER",
		"ASSIMP_BUILD_NO_CSM_IMPORTER",
		"ASSIMP_BUILD_NO_DXF_IMPORTER",
		-- "ASSIMP_BUILD_NO_FBX_IMPORTER",
		"ASSIMP_BUILD_NO_GLTF_IMPORTER",
		"ASSIMP_BUILD_NO_HMP_IMPORTER",
		"ASSIMP_BUILD_NO_IFC_IMPORTER",
		"ASSIMP_BUILD_NO_IRR_IMPORTER",
		"ASSIMP_BUILD_NO_IRRMESH_IMPORTER",
		"ASSIMP_BUILD_NO_LWO_IMPORTER",
		"ASSIMP_BUILD_NO_LWS_IMPORTER",
		"ASSIMP_BUILD_NO_M3D_IMPORTER",
		"ASSIMP_BUILD_NO_MD2_IMPORTER",
		"ASSIMP_BUILD_NO_MD3_IMPORTER",
		"ASSIMP_BUILD_NO_MD5_IMPORTER",
		"ASSIMP_BUILD_NO_MDC_IMPORTER",
		"ASSIMP_BUILD_NO_MDL_IMPORTER",
		"ASSIMP_BUILD_NO_MMD_IMPORTER",
		"ASSIMP_BUILD_NO_MS3D_IMPORTER",
		"ASSIMP_BUILD_NO_NDO_IMPORTER",
		"ASSIMP_BUILD_NO_NFF_IMPORTER",
		-- "ASSIMP_BUILD_NO_OBJ_IMPORTER",
		"ASSIMP_BUILD_NO_OFF_IMPORTER",
		"ASSIMP_BUILD_NO_OGRE_IMPORTER",
		"ASSIMP_BUILD_NO_OPENGEX_IMPORTER",
		"ASSIMP_BUILD_NO_PLY_IMPORTER",
		"ASSIMP_BUILD_NO_Q3BSP_IMPORTER",
		"ASSIMP_BUILD_NO_Q3D_IMPORTER",
		"ASSIMP_BUILD_NO_RAW_IMPORTER",
		"ASSIMP_BUILD_NO_SIB_IMPORTER",
		"ASSIMP_BUILD_NO_SMD_IMPORTER",
		"ASSIMP_BUILD_NO_STEP_IMPORTER",
		"ASSIMP_BUILD_NO_STL_IMPORTER",
		"ASSIMP_BUILD_NO_TERRAGEN_IMPORTER",
		"ASSIMP_BUILD_NO_X_IMPORTER",
		"ASSIMP_BUILD_NO_X3D_IMPORTER",
		"ASSIMP_BUILD_NO_XGL_IMPORTER"
    }

	filter "system:linux"
		pic "On"
		defines
		{
			"HAVE_UNISTD_H"
		}