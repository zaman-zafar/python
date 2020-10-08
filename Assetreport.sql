/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  t1.[ASSETID]
      ,[LOWVALUEPOOLTYPE_AU]
      ,[TXT]
      ,[TRANSDATE]
      ,[TRANSTYPE]
	,t6.ENUMITEMLABEL	
      ,[VOUCHER]
      ,[AMOUNTCUR]
      ,t1.[CURRENCYCODE]
      ,[AMOUNTMST]
      ,t1.[LVPTRANSFERID_AU]
      ,t1.[POSTINGPROFILE]
      ,t1.[ASSETGROUP]
      ,t1.[BOOKID]
      ,[CONSUMPTIONQTY]
      ,[REVALUATIONDONE]
      ,[REVALUATIONTRANS]
      ,[REVALUATIONAMOUNT]
      ,[REVALUEDTRANSID]
      ,[RESERVETRANSFERDONE]
      ,[RESERVETRANSID]
      ,[RECLASSIFICATION]
      ,[REASONREFRECID]
      ,t1.[DEFAULTDIMENSION]
      ,[APPROVER]
      ,[ISPRIORYEAR]
      ,[DOCUMENTNUM_W]
      ,[DOCUMENTDATE_W]
      ,[CASHDISCBASEAMOUNTMST]
      ,[CASHDISCBASETRANSID]
      ,t1.[MODIFIEDDATETIME]
      ,t1.[DATAAREAID]
      ,t1.[RECVERSION]
      ,t1.[PARTITION]
      ,t1.[RECID]
	  ,t2.ASSETGROUP
	  ,t2.NAME
	  ,t3.PURCHID
	  ,t4.Students
	,t3.VENDACCOUNT
	,t5.DEPRECIATION
	,t5.LIFETIME
	,t5.DEPRECIATIONSTARTDATE
	,t5.LASTDEPRECIATIONDATE
	,t5.ACQUISITIONPRICE
	,t5.ACQUISITIONDATE
	
  FROM [MITAX_live].[dbo].[ASSETTRANS] as t1 left join ASSETTABLE as t2 on t1.ASSETID = t2.ASSETID and t1.DATAAREAID = t2.DATAAREAID

  left join PURCHLINE as t3 on  t2.PURCHLINERECID = t3.RECID and t2.DATAAREAID = t3.DATAAREAID

   left join (Select distinct ST2.DIMENSIONATTRIBUTEVALUESET, 
    substring(
        (
            Select '-'+ST1.DISPLAYVALUE  AS [text()]
            From DIMENSIONATTRIBUTEVALUESETITEM ST1
            Where ST1.DIMENSIONATTRIBUTEVALUESET = ST2.DIMENSIONATTRIBUTEVALUESET
            ORDER BY ST1.DIMENSIONATTRIBUTEVALUESET
            For XML PATH ('')
        ), 2, 1000) [Students]
From DIMENSIONATTRIBUTEVALUESETITEM ST2  ) as t4 on t1.DEFAULTDIMENSION = t4.DIMENSIONATTRIBUTEVALUESET

left join ASSETBOOK as t5 on t1.BOOKID = t5.BOOKID and t1.ASSETID = t5.ASSETID and t1.DATAAREAID = t5.DATAAREAID

left join SRSANALYSISENUMS as t6 on t1.TRANSTYPE = t6.ENUMITEMVALUE and t6.ENUMNAME = 'AssetTransType'

  
  where t1.DATAAREAID = 'required company'