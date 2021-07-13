//
//  CurrencyValueModel.swift
//  currency-board
//

import Foundation

struct CurrencyValueModel : Codable {
    
	let uSDAED : Double?
	let uSDAFN : Double?
	let uSDALL : Double?
	let uSDAMD : Double?
	let uSDANG : Double?
	let uSDAOA : Double?
	let uSDARS : Double?
	let uSDAUD : Double?
	let uSDAWG : Double?
	let uSDAZN : Double?
	let uSDBAM : Double?
	let uSDBBD : Double?
	let uSDBDT : Double?
	let uSDBGN : Double?
	let uSDBHD : Double?
	let uSDBIF : Double?
	let uSDBMD : Int?
	let uSDBND : Double?
	let uSDBOB : Double?
	let uSDBRL : Double?
	let uSDBSD : Double?
	let uSDBTC : Double?
	let uSDBTN : Double?
	let uSDBWP : Double?
	let uSDBYN : Double?
	let uSDBYR : Int?
	let uSDBZD : Double?
	let uSDCAD : Double?
	let uSDCDF : Double?
	let uSDCHF : Double?
	let uSDCLF : Double?
	let uSDCLP : Double?
	let uSDCNY : Double?
	let uSDCOP : Double?
	let uSDCRC : Double?
	let uSDCUC : Int?
	let uSDCUP : Double?
	let uSDCVE : Double?
	let uSDCZK : Double?
	let uSDDJF : Double?
	let uSDDKK : Double?
	let uSDDOP : Double?
	let uSDDZD : Double?
	let uSDEGP : Double?
	let uSDERN : Double?
	let uSDETB : Double?
	let uSDEUR : Double?
	let uSDFJD : Double?
	let uSDFKP : Double?
	let uSDGBP : Double?
	let uSDGEL : Double?
	let uSDGGP : Double?
	let uSDGHS : Double?
	let uSDGIP : Double?
	let uSDGMD : Double?
	let uSDGNF : Double?
	let uSDGTQ : Double?
	let uSDGYD : Double?
	let uSDHKD : Double?
	let uSDHNL : Double?
	let uSDHRK : Double?
	let uSDHTG : Double?
	let uSDHUF : Double?
	let uSDIDR : Double?
	let uSDILS : Double?
	let uSDIMP : Double?
	let uSDINR : Double?
	let uSDIQD : Double?
	let uSDIRR : Double?
	let uSDISK : Double?
	let uSDJEP : Double?
	let uSDJMD : Double?
	let uSDJOD : Double?
	let uSDJPY : Double?
	let uSDKES : Double?
	let uSDKGS : Double?
	let uSDKHR : Double?
	let uSDKMF : Double?
	let uSDKPW : Double?
	let uSDKRW : Double?
	let uSDKWD : Double?
	let uSDKYD : Double?
	let uSDKZT : Double?
	let uSDLAK : Double?
	let uSDLBP : Double?
	let uSDLKR : Double?
	let uSDLRD : Double?
	let uSDLSL : Double?
	let uSDLTL : Double?
	let uSDLVL : Double?
	let uSDLYD : Double?
	let uSDMAD : Double?
	let uSDMDL : Double?
	let uSDMGA : Double?
	let uSDMKD : Double?
	let uSDMMK : Double?
	let uSDMNT : Double?
	let uSDMOP : Double?
	let uSDMRO : Double?
	let uSDMUR : Double?
	let uSDMVR : Double?
	let uSDMWK : Double?
	let uSDMXN : Double?
	let uSDMYR : Double?
	let uSDMZN : Double?
	let uSDNAD : Double?
	let uSDNGN : Double?
	let uSDNIO : Double?
	let uSDNOK : Double?
	let uSDNPR : Double?
	let uSDNZD : Double?
	let uSDOMR : Double?
	let uSDPAB : Double?
	let uSDPEN : Double?
	let uSDPGK : Double?
	let uSDPHP : Double?
	let uSDPKR : Double?
	let uSDPLN : Double?
	let uSDPYG : Double?
	let uSDQAR : Double?
	let uSDRON : Double?
	let uSDRSD : Double?
	let uSDRUB : Double?
	let uSDRWF : Double?
	let uSDSAR : Double?
	let uSDSBD : Double?
	let uSDSCR : Double?
	let uSDSDG : Double?
	let uSDSEK : Double?
	let uSDSGD : Double?
	let uSDSHP : Double?
	let uSDSLL : Double?
	let uSDSOS : Double?
	let uSDSRD : Double?
	let uSDSTD : Double?
	let uSDSVC : Double?
	let uSDSYP : Double?
	let uSDSZL : Double?
	let uSDTHB : Double?
	let uSDTJS : Double?
	let uSDTMT : Double?
	let uSDTND : Double?
	let uSDTOP : Double?
	let uSDTRY : Double?
	let uSDTTD : Double?
	let uSDTWD : Double?
	let uSDTZS : Double?
	let uSDUAH : Double?
	let uSDUGX : Double?
	let uSDUSD : Int?
	let uSDUYU : Double?
	let uSDUZS : Double?
	let uSDVEF : Double?
	let uSDVND : Double?
	let uSDVUV : Double?
	let uSDWST : Double?
	let uSDXAF : Double?
	let uSDXAG : Double?
	let uSDXAU : Double?
	let uSDXCD : Double?
	let uSDXDR : Double?
	let uSDXOF : Double?
	let uSDXPF : Double?
	let uSDYER : Double?
	let uSDZAR : Double?
	let uSDZMK : Double?
	let uSDZMW : Double?
	let uSDZWL : Double?

	enum CodingKeys: String, CodingKey {

		case uSDAED = "USDAED"
		case uSDAFN = "USDAFN"
		case uSDALL = "USDALL"
		case uSDAMD = "USDAMD"
		case uSDANG = "USDANG"
		case uSDAOA = "USDAOA"
		case uSDARS = "USDARS"
		case uSDAUD = "USDAUD"
		case uSDAWG = "USDAWG"
		case uSDAZN = "USDAZN"
		case uSDBAM = "USDBAM"
		case uSDBBD = "USDBBD"
		case uSDBDT = "USDBDT"
		case uSDBGN = "USDBGN"
		case uSDBHD = "USDBHD"
		case uSDBIF = "USDBIF"
		case uSDBMD = "USDBMD"
		case uSDBND = "USDBND"
		case uSDBOB = "USDBOB"
		case uSDBRL = "USDBRL"
		case uSDBSD = "USDBSD"
		case uSDBTC = "USDBTC"
		case uSDBTN = "USDBTN"
		case uSDBWP = "USDBWP"
		case uSDBYN = "USDBYN"
		case uSDBYR = "USDBYR"
		case uSDBZD = "USDBZD"
		case uSDCAD = "USDCAD"
		case uSDCDF = "USDCDF"
		case uSDCHF = "USDCHF"
		case uSDCLF = "USDCLF"
		case uSDCLP = "USDCLP"
		case uSDCNY = "USDCNY"
		case uSDCOP = "USDCOP"
		case uSDCRC = "USDCRC"
		case uSDCUC = "USDCUC"
		case uSDCUP = "USDCUP"
		case uSDCVE = "USDCVE"
		case uSDCZK = "USDCZK"
		case uSDDJF = "USDDJF"
		case uSDDKK = "USDDKK"
		case uSDDOP = "USDDOP"
		case uSDDZD = "USDDZD"
		case uSDEGP = "USDEGP"
		case uSDERN = "USDERN"
		case uSDETB = "USDETB"
		case uSDEUR = "USDEUR"
		case uSDFJD = "USDFJD"
		case uSDFKP = "USDFKP"
		case uSDGBP = "USDGBP"
		case uSDGEL = "USDGEL"
		case uSDGGP = "USDGGP"
		case uSDGHS = "USDGHS"
		case uSDGIP = "USDGIP"
		case uSDGMD = "USDGMD"
		case uSDGNF = "USDGNF"
		case uSDGTQ = "USDGTQ"
		case uSDGYD = "USDGYD"
		case uSDHKD = "USDHKD"
		case uSDHNL = "USDHNL"
		case uSDHRK = "USDHRK"
		case uSDHTG = "USDHTG"
		case uSDHUF = "USDHUF"
		case uSDIDR = "USDIDR"
		case uSDILS = "USDILS"
		case uSDIMP = "USDIMP"
		case uSDINR = "USDINR"
		case uSDIQD = "USDIQD"
		case uSDIRR = "USDIRR"
		case uSDISK = "USDISK"
		case uSDJEP = "USDJEP"
		case uSDJMD = "USDJMD"
		case uSDJOD = "USDJOD"
		case uSDJPY = "USDJPY"
		case uSDKES = "USDKES"
		case uSDKGS = "USDKGS"
		case uSDKHR = "USDKHR"
		case uSDKMF = "USDKMF"
		case uSDKPW = "USDKPW"
		case uSDKRW = "USDKRW"
		case uSDKWD = "USDKWD"
		case uSDKYD = "USDKYD"
		case uSDKZT = "USDKZT"
		case uSDLAK = "USDLAK"
		case uSDLBP = "USDLBP"
		case uSDLKR = "USDLKR"
		case uSDLRD = "USDLRD"
		case uSDLSL = "USDLSL"
		case uSDLTL = "USDLTL"
		case uSDLVL = "USDLVL"
		case uSDLYD = "USDLYD"
		case uSDMAD = "USDMAD"
		case uSDMDL = "USDMDL"
		case uSDMGA = "USDMGA"
		case uSDMKD = "USDMKD"
		case uSDMMK = "USDMMK"
		case uSDMNT = "USDMNT"
		case uSDMOP = "USDMOP"
		case uSDMRO = "USDMRO"
		case uSDMUR = "USDMUR"
		case uSDMVR = "USDMVR"
		case uSDMWK = "USDMWK"
		case uSDMXN = "USDMXN"
		case uSDMYR = "USDMYR"
		case uSDMZN = "USDMZN"
		case uSDNAD = "USDNAD"
		case uSDNGN = "USDNGN"
		case uSDNIO = "USDNIO"
		case uSDNOK = "USDNOK"
		case uSDNPR = "USDNPR"
		case uSDNZD = "USDNZD"
		case uSDOMR = "USDOMR"
		case uSDPAB = "USDPAB"
		case uSDPEN = "USDPEN"
		case uSDPGK = "USDPGK"
		case uSDPHP = "USDPHP"
		case uSDPKR = "USDPKR"
		case uSDPLN = "USDPLN"
		case uSDPYG = "USDPYG"
		case uSDQAR = "USDQAR"
		case uSDRON = "USDRON"
		case uSDRSD = "USDRSD"
		case uSDRUB = "USDRUB"
		case uSDRWF = "USDRWF"
		case uSDSAR = "USDSAR"
		case uSDSBD = "USDSBD"
		case uSDSCR = "USDSCR"
		case uSDSDG = "USDSDG"
		case uSDSEK = "USDSEK"
		case uSDSGD = "USDSGD"
		case uSDSHP = "USDSHP"
		case uSDSLL = "USDSLL"
		case uSDSOS = "USDSOS"
		case uSDSRD = "USDSRD"
		case uSDSTD = "USDSTD"
		case uSDSVC = "USDSVC"
		case uSDSYP = "USDSYP"
		case uSDSZL = "USDSZL"
		case uSDTHB = "USDTHB"
		case uSDTJS = "USDTJS"
		case uSDTMT = "USDTMT"
		case uSDTND = "USDTND"
		case uSDTOP = "USDTOP"
		case uSDTRY = "USDTRY"
		case uSDTTD = "USDTTD"
		case uSDTWD = "USDTWD"
		case uSDTZS = "USDTZS"
		case uSDUAH = "USDUAH"
		case uSDUGX = "USDUGX"
		case uSDUSD = "USDUSD"
		case uSDUYU = "USDUYU"
		case uSDUZS = "USDUZS"
		case uSDVEF = "USDVEF"
		case uSDVND = "USDVND"
		case uSDVUV = "USDVUV"
		case uSDWST = "USDWST"
		case uSDXAF = "USDXAF"
		case uSDXAG = "USDXAG"
		case uSDXAU = "USDXAU"
		case uSDXCD = "USDXCD"
		case uSDXDR = "USDXDR"
		case uSDXOF = "USDXOF"
		case uSDXPF = "USDXPF"
		case uSDYER = "USDYER"
		case uSDZAR = "USDZAR"
		case uSDZMK = "USDZMK"
		case uSDZMW = "USDZMW"
		case uSDZWL = "USDZWL"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
        
		uSDAED = try values.decodeIfPresent(Double.self, forKey: .uSDAED)
		uSDAFN = try values.decodeIfPresent(Double.self, forKey: .uSDAFN)
		uSDALL = try values.decodeIfPresent(Double.self, forKey: .uSDALL)
		uSDAMD = try values.decodeIfPresent(Double.self, forKey: .uSDAMD)
		uSDANG = try values.decodeIfPresent(Double.self, forKey: .uSDANG)
		uSDAOA = try values.decodeIfPresent(Double.self, forKey: .uSDAOA)
		uSDARS = try values.decodeIfPresent(Double.self, forKey: .uSDARS)
		uSDAUD = try values.decodeIfPresent(Double.self, forKey: .uSDAUD)
		uSDAWG = try values.decodeIfPresent(Double.self, forKey: .uSDAWG)
		uSDAZN = try values.decodeIfPresent(Double.self, forKey: .uSDAZN)
		uSDBAM = try values.decodeIfPresent(Double.self, forKey: .uSDBAM)
		uSDBBD = try values.decodeIfPresent(Double.self, forKey: .uSDBBD)
		uSDBDT = try values.decodeIfPresent(Double.self, forKey: .uSDBDT)
		uSDBGN = try values.decodeIfPresent(Double.self, forKey: .uSDBGN)
		uSDBHD = try values.decodeIfPresent(Double.self, forKey: .uSDBHD)
		uSDBIF = try values.decodeIfPresent(Double.self, forKey: .uSDBIF)
		uSDBMD = try values.decodeIfPresent(Int.self, forKey: .uSDBMD)
		uSDBND = try values.decodeIfPresent(Double.self, forKey: .uSDBND)
		uSDBOB = try values.decodeIfPresent(Double.self, forKey: .uSDBOB)
		uSDBRL = try values.decodeIfPresent(Double.self, forKey: .uSDBRL)
		uSDBSD = try values.decodeIfPresent(Double.self, forKey: .uSDBSD)
		uSDBTC = try values.decodeIfPresent(Double.self, forKey: .uSDBTC)
		uSDBTN = try values.decodeIfPresent(Double.self, forKey: .uSDBTN)
		uSDBWP = try values.decodeIfPresent(Double.self, forKey: .uSDBWP)
		uSDBYN = try values.decodeIfPresent(Double.self, forKey: .uSDBYN)
		uSDBYR = try values.decodeIfPresent(Int.self, forKey: .uSDBYR)
		uSDBZD = try values.decodeIfPresent(Double.self, forKey: .uSDBZD)
		uSDCAD = try values.decodeIfPresent(Double.self, forKey: .uSDCAD)
		uSDCDF = try values.decodeIfPresent(Double.self, forKey: .uSDCDF)
		uSDCHF = try values.decodeIfPresent(Double.self, forKey: .uSDCHF)
		uSDCLF = try values.decodeIfPresent(Double.self, forKey: .uSDCLF)
		uSDCLP = try values.decodeIfPresent(Double.self, forKey: .uSDCLP)
		uSDCNY = try values.decodeIfPresent(Double.self, forKey: .uSDCNY)
		uSDCOP = try values.decodeIfPresent(Double.self, forKey: .uSDCOP)
		uSDCRC = try values.decodeIfPresent(Double.self, forKey: .uSDCRC)
		uSDCUC = try values.decodeIfPresent(Int.self, forKey: .uSDCUC)
		uSDCUP = try values.decodeIfPresent(Double.self, forKey: .uSDCUP)
		uSDCVE = try values.decodeIfPresent(Double.self, forKey: .uSDCVE)
		uSDCZK = try values.decodeIfPresent(Double.self, forKey: .uSDCZK)
		uSDDJF = try values.decodeIfPresent(Double.self, forKey: .uSDDJF)
		uSDDKK = try values.decodeIfPresent(Double.self, forKey: .uSDDKK)
		uSDDOP = try values.decodeIfPresent(Double.self, forKey: .uSDDOP)
		uSDDZD = try values.decodeIfPresent(Double.self, forKey: .uSDDZD)
		uSDEGP = try values.decodeIfPresent(Double.self, forKey: .uSDEGP)
		uSDERN = try values.decodeIfPresent(Double.self, forKey: .uSDERN)
		uSDETB = try values.decodeIfPresent(Double.self, forKey: .uSDETB)
		uSDEUR = try values.decodeIfPresent(Double.self, forKey: .uSDEUR)
		uSDFJD = try values.decodeIfPresent(Double.self, forKey: .uSDFJD)
		uSDFKP = try values.decodeIfPresent(Double.self, forKey: .uSDFKP)
		uSDGBP = try values.decodeIfPresent(Double.self, forKey: .uSDGBP)
		uSDGEL = try values.decodeIfPresent(Double.self, forKey: .uSDGEL)
		uSDGGP = try values.decodeIfPresent(Double.self, forKey: .uSDGGP)
		uSDGHS = try values.decodeIfPresent(Double.self, forKey: .uSDGHS)
		uSDGIP = try values.decodeIfPresent(Double.self, forKey: .uSDGIP)
		uSDGMD = try values.decodeIfPresent(Double.self, forKey: .uSDGMD)
		uSDGNF = try values.decodeIfPresent(Double.self, forKey: .uSDGNF)
		uSDGTQ = try values.decodeIfPresent(Double.self, forKey: .uSDGTQ)
		uSDGYD = try values.decodeIfPresent(Double.self, forKey: .uSDGYD)
		uSDHKD = try values.decodeIfPresent(Double.self, forKey: .uSDHKD)
		uSDHNL = try values.decodeIfPresent(Double.self, forKey: .uSDHNL)
		uSDHRK = try values.decodeIfPresent(Double.self, forKey: .uSDHRK)
		uSDHTG = try values.decodeIfPresent(Double.self, forKey: .uSDHTG)
		uSDHUF = try values.decodeIfPresent(Double.self, forKey: .uSDHUF)
		uSDIDR = try values.decodeIfPresent(Double.self, forKey: .uSDIDR)
		uSDILS = try values.decodeIfPresent(Double.self, forKey: .uSDILS)
		uSDIMP = try values.decodeIfPresent(Double.self, forKey: .uSDIMP)
		uSDINR = try values.decodeIfPresent(Double.self, forKey: .uSDINR)
		uSDIQD = try values.decodeIfPresent(Double.self, forKey: .uSDIQD)
		uSDIRR = try values.decodeIfPresent(Double.self, forKey: .uSDIRR)
		uSDISK = try values.decodeIfPresent(Double.self, forKey: .uSDISK)
		uSDJEP = try values.decodeIfPresent(Double.self, forKey: .uSDJEP)
		uSDJMD = try values.decodeIfPresent(Double.self, forKey: .uSDJMD)
		uSDJOD = try values.decodeIfPresent(Double.self, forKey: .uSDJOD)
		uSDJPY = try values.decodeIfPresent(Double.self, forKey: .uSDJPY)
		uSDKES = try values.decodeIfPresent(Double.self, forKey: .uSDKES)
		uSDKGS = try values.decodeIfPresent(Double.self, forKey: .uSDKGS)
		uSDKHR = try values.decodeIfPresent(Double.self, forKey: .uSDKHR)
		uSDKMF = try values.decodeIfPresent(Double.self, forKey: .uSDKMF)
		uSDKPW = try values.decodeIfPresent(Double.self, forKey: .uSDKPW)
		uSDKRW = try values.decodeIfPresent(Double.self, forKey: .uSDKRW)
		uSDKWD = try values.decodeIfPresent(Double.self, forKey: .uSDKWD)
		uSDKYD = try values.decodeIfPresent(Double.self, forKey: .uSDKYD)
		uSDKZT = try values.decodeIfPresent(Double.self, forKey: .uSDKZT)
		uSDLAK = try values.decodeIfPresent(Double.self, forKey: .uSDLAK)
		uSDLBP = try values.decodeIfPresent(Double.self, forKey: .uSDLBP)
		uSDLKR = try values.decodeIfPresent(Double.self, forKey: .uSDLKR)
		uSDLRD = try values.decodeIfPresent(Double.self, forKey: .uSDLRD)
		uSDLSL = try values.decodeIfPresent(Double.self, forKey: .uSDLSL)
		uSDLTL = try values.decodeIfPresent(Double.self, forKey: .uSDLTL)
		uSDLVL = try values.decodeIfPresent(Double.self, forKey: .uSDLVL)
		uSDLYD = try values.decodeIfPresent(Double.self, forKey: .uSDLYD)
		uSDMAD = try values.decodeIfPresent(Double.self, forKey: .uSDMAD)
		uSDMDL = try values.decodeIfPresent(Double.self, forKey: .uSDMDL)
		uSDMGA = try values.decodeIfPresent(Double.self, forKey: .uSDMGA)
		uSDMKD = try values.decodeIfPresent(Double.self, forKey: .uSDMKD)
		uSDMMK = try values.decodeIfPresent(Double.self, forKey: .uSDMMK)
		uSDMNT = try values.decodeIfPresent(Double.self, forKey: .uSDMNT)
		uSDMOP = try values.decodeIfPresent(Double.self, forKey: .uSDMOP)
		uSDMRO = try values.decodeIfPresent(Double.self, forKey: .uSDMRO)
		uSDMUR = try values.decodeIfPresent(Double.self, forKey: .uSDMUR)
		uSDMVR = try values.decodeIfPresent(Double.self, forKey: .uSDMVR)
		uSDMWK = try values.decodeIfPresent(Double.self, forKey: .uSDMWK)
		uSDMXN = try values.decodeIfPresent(Double.self, forKey: .uSDMXN)
		uSDMYR = try values.decodeIfPresent(Double.self, forKey: .uSDMYR)
		uSDMZN = try values.decodeIfPresent(Double.self, forKey: .uSDMZN)
		uSDNAD = try values.decodeIfPresent(Double.self, forKey: .uSDNAD)
		uSDNGN = try values.decodeIfPresent(Double.self, forKey: .uSDNGN)
		uSDNIO = try values.decodeIfPresent(Double.self, forKey: .uSDNIO)
		uSDNOK = try values.decodeIfPresent(Double.self, forKey: .uSDNOK)
		uSDNPR = try values.decodeIfPresent(Double.self, forKey: .uSDNPR)
		uSDNZD = try values.decodeIfPresent(Double.self, forKey: .uSDNZD)
		uSDOMR = try values.decodeIfPresent(Double.self, forKey: .uSDOMR)
		uSDPAB = try values.decodeIfPresent(Double.self, forKey: .uSDPAB)
		uSDPEN = try values.decodeIfPresent(Double.self, forKey: .uSDPEN)
		uSDPGK = try values.decodeIfPresent(Double.self, forKey: .uSDPGK)
		uSDPHP = try values.decodeIfPresent(Double.self, forKey: .uSDPHP)
		uSDPKR = try values.decodeIfPresent(Double.self, forKey: .uSDPKR)
		uSDPLN = try values.decodeIfPresent(Double.self, forKey: .uSDPLN)
		uSDPYG = try values.decodeIfPresent(Double.self, forKey: .uSDPYG)
		uSDQAR = try values.decodeIfPresent(Double.self, forKey: .uSDQAR)
		uSDRON = try values.decodeIfPresent(Double.self, forKey: .uSDRON)
		uSDRSD = try values.decodeIfPresent(Double.self, forKey: .uSDRSD)
		uSDRUB = try values.decodeIfPresent(Double.self, forKey: .uSDRUB)
		uSDRWF = try values.decodeIfPresent(Double.self, forKey: .uSDRWF)
		uSDSAR = try values.decodeIfPresent(Double.self, forKey: .uSDSAR)
		uSDSBD = try values.decodeIfPresent(Double.self, forKey: .uSDSBD)
		uSDSCR = try values.decodeIfPresent(Double.self, forKey: .uSDSCR)
		uSDSDG = try values.decodeIfPresent(Double.self, forKey: .uSDSDG)
		uSDSEK = try values.decodeIfPresent(Double.self, forKey: .uSDSEK)
		uSDSGD = try values.decodeIfPresent(Double.self, forKey: .uSDSGD)
		uSDSHP = try values.decodeIfPresent(Double.self, forKey: .uSDSHP)
		uSDSLL = try values.decodeIfPresent(Double.self, forKey: .uSDSLL)
		uSDSOS = try values.decodeIfPresent(Double.self, forKey: .uSDSOS)
		uSDSRD = try values.decodeIfPresent(Double.self, forKey: .uSDSRD)
		uSDSTD = try values.decodeIfPresent(Double.self, forKey: .uSDSTD)
		uSDSVC = try values.decodeIfPresent(Double.self, forKey: .uSDSVC)
		uSDSYP = try values.decodeIfPresent(Double.self, forKey: .uSDSYP)
		uSDSZL = try values.decodeIfPresent(Double.self, forKey: .uSDSZL)
		uSDTHB = try values.decodeIfPresent(Double.self, forKey: .uSDTHB)
		uSDTJS = try values.decodeIfPresent(Double.self, forKey: .uSDTJS)
		uSDTMT = try values.decodeIfPresent(Double.self, forKey: .uSDTMT)
		uSDTND = try values.decodeIfPresent(Double.self, forKey: .uSDTND)
		uSDTOP = try values.decodeIfPresent(Double.self, forKey: .uSDTOP)
		uSDTRY = try values.decodeIfPresent(Double.self, forKey: .uSDTRY)
		uSDTTD = try values.decodeIfPresent(Double.self, forKey: .uSDTTD)
		uSDTWD = try values.decodeIfPresent(Double.self, forKey: .uSDTWD)
		uSDTZS = try values.decodeIfPresent(Double.self, forKey: .uSDTZS)
		uSDUAH = try values.decodeIfPresent(Double.self, forKey: .uSDUAH)
		uSDUGX = try values.decodeIfPresent(Double.self, forKey: .uSDUGX)
		uSDUSD = try values.decodeIfPresent(Int.self, forKey: .uSDUSD)
		uSDUYU = try values.decodeIfPresent(Double.self, forKey: .uSDUYU)
		uSDUZS = try values.decodeIfPresent(Double.self, forKey: .uSDUZS)
		uSDVEF = try values.decodeIfPresent(Double.self, forKey: .uSDVEF)
		uSDVND = try values.decodeIfPresent(Double.self, forKey: .uSDVND)
		uSDVUV = try values.decodeIfPresent(Double.self, forKey: .uSDVUV)
		uSDWST = try values.decodeIfPresent(Double.self, forKey: .uSDWST)
		uSDXAF = try values.decodeIfPresent(Double.self, forKey: .uSDXAF)
		uSDXAG = try values.decodeIfPresent(Double.self, forKey: .uSDXAG)
		uSDXAU = try values.decodeIfPresent(Double.self, forKey: .uSDXAU)
		uSDXCD = try values.decodeIfPresent(Double.self, forKey: .uSDXCD)
		uSDXDR = try values.decodeIfPresent(Double.self, forKey: .uSDXDR)
		uSDXOF = try values.decodeIfPresent(Double.self, forKey: .uSDXOF)
		uSDXPF = try values.decodeIfPresent(Double.self, forKey: .uSDXPF)
		uSDYER = try values.decodeIfPresent(Double.self, forKey: .uSDYER)
		uSDZAR = try values.decodeIfPresent(Double.self, forKey: .uSDZAR)
		uSDZMK = try values.decodeIfPresent(Double.self, forKey: .uSDZMK)
		uSDZMW = try values.decodeIfPresent(Double.self, forKey: .uSDZMW)
		uSDZWL = try values.decodeIfPresent(Double.self, forKey: .uSDZWL)
	}

}
