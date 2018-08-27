<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="PaymentTerms2.xsl"/>
	<!--  *********** point <PaymentObligation1> Start ********** -->
	<xsl:template name="PaymentObligation1">
		<xsl:param name="PaymentObligation1"/>
		<xsl:param name="PaymentObligation1_parent"/>
		<xsl:param name="stmt2" select="Goods"/>
		<xsl:variable name="PaymentObligation1_name" select="name($PaymentObligation1)"/>
		<xsl:variable name="PaymentObligation1_pname" select="$PaymentObligation1_parent"/>
		<xsl:variable name="PmtOblgtnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$PaymentObligation1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Amt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PctgDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Pctg'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ChrgsAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ChrgsAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ChrgsPctgDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ChrgsPctg'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="XpryDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'XpryDt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AplblLawDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AplblLaw'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>')</xsl:attribute>
					<xsl:value-of select="$PmtOblgtnDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$AmtDesc"/>
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>_Amt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>_Amt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentObligation1/Amt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentObligation1/Amt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$PctgDesc"/>
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>_Pctg</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>_Pctg</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentObligation1/Pctg"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$ChrgsAmtDesc"/>
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>_ChrgsAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>_ChrgsAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentObligation1/ChrgsAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>_ChrgsAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>_ChrgsAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentObligation1/ChrgsAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$ChrgsPctgDesc"/>
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>_ChrgsPctg</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>_ChrgsPctg</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentObligation1/ChrgsPctg"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$XpryDtDesc"/>
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>_XpryDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>_XpryDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentObligation1/XpryDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$AplblLawDesc"/>
								<xsl:attribute name="style">width:50%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>_AplblLaw</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>_AplblLaw</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PaymentObligation1/AplblLaw"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="BICIdentification1" select="$PaymentObligation1/OblgrBk"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
							<xsl:with-param name="BICIdentification1_parent">
								<xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="BICIdentification1_double" select="$PaymentObligation1/RcptBk"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1_double"/>
							<xsl:with-param name="BICIdentification1_parent">
								<xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$PaymentObligation1/PmtTerms">
							<xsl:variable name="PaymentTerms2" select="."/>
							<xsl:call-template name="PaymentTerms2">
								<xsl:with-param name="PaymentTerms2" select="$PaymentTerms2"/>
								<xsl:with-param name="PaymentTerms2_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="SettlementTerms2" select="$PaymentObligation1/SttlmTerms"/>
						<xsl:call-template name="SettlementTerms2">
							<xsl:with-param name="SettlementTerms2" select="$SettlementTerms2"/>
							<xsl:with-param name="SettlementTerms2_parent">
								<xsl:value-of select="$PaymentObligation1_pname"/>_<xsl:value-of select="$PaymentObligation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <PaymentObligation1> end ********** -->
</xsl:stylesheet>
