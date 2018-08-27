<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="DocumentIdentification1.xsl"/>
	<xsl:include href="DocumentIdentification7.xsl"/>
	<xsl:include href="PartyIdentification26.xsl"/>
	<xsl:include href="PaymentTerms1.xsl"/>
	<xsl:include href="LineItem7.xsl"/>
	<xsl:include href="SettlementTerms2.xsl"/>
	<xsl:include href="PaymentObligation1.xsl"/>
	<xsl:include href="RequiredSubmission2.xsl"/>
	<xsl:include href="RequiredSubmission3.xsl"/>
	<xsl:include href="RequiredSubmission4.xsl"/>
	<xsl:include href="RequiredSubmission5.xsl"/>
	<xsl:include href="FinancialInstitutionIdentification4Choice.xsl"/>
	<xsl:include href="CashAccount7.xsl"/>
	<xsl:include href="GenericIdentification4.xsl"/>
	<xsl:include href="PartyIdentification27.xsl"/>
	<!--  *********** point <Baseline3> Start ********** -->
	<xsl:template name="Baseline3">
		<xsl:param name="Baseline3"/>
		<xsl:param name="Baseline3_parent"/>
		<xsl:param name="stmt" select="BaseIn"/>
		<xsl:variable name="Baseline3_name" select="name($Baseline3)"/>
		<xsl:variable name="Baseline3_pname" select="$Baseline3_parent"/>
		<xsl:variable name="baseLineDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$Baseline3_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="svccdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'SvcCd'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="LatstMtchDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'LatstMtchDt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="InttToPayXpctdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'InttToPayXpctd'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>')</xsl:attribute>
					<xsl:value-of select="$baseLineDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:20%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$svccdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>_SvcCd</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>_SvcCd</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Baseline3/SvcCd"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:40%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$LatstMtchDtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>_LatstMtchDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>_LatstMtchDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Baseline3/LatstMtchDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:40%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$InttToPayXpctdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>_InttToPayXpctd</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>_InttToPayXpctd</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Baseline3/InttToPayXpctd"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="DocumentIdentification1" select="$Baseline3/SubmitrBaselnId"/>
						<xsl:call-template name="DocumentIdentification1">
							<xsl:with-param name="DocumentIdentification1" select="$DocumentIdentification1"/>
							<xsl:with-param name="DocumentIdentification1_parent">
								<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="DocumentIdentification7" select="$Baseline3/PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
							<xsl:with-param name="DocumentIdentification7_parent">
								<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26" select="$Baseline3/Buyr"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26_double" select="$Baseline3/Sellr"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26_double"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="BICIdentification1" select="$Baseline3/BuyrBk"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
							<xsl:with-param name="BICIdentification1_parent">
								<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="BICIdentification1_double" select="$Baseline3/SellrBk"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1_double"/>
							<xsl:with-param name="BICIdentification1_parent">
								<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="BICIdentification1_three" select="$Baseline3/BuyrSdSubmitgBk"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1_three"/>
							<xsl:with-param name="BICIdentification1_parent">
								<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="BICIdentification1_four" select="$Baseline3/SellrSdSubmitgBk"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1_four"/>
							<xsl:with-param name="BICIdentification1_parent">
								<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26_three" select="$Baseline3/BllTo"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26_three"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26_four" select="$Baseline3/ShipTo"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26_four"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26_five" select="$Baseline3/Consgn"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26_five"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="LineItem7" select="$Baseline3/Goods"/>
						<xsl:call-template name="LineItem7">
							<xsl:with-param name="LineItem7" select="$LineItem7"/>
							<xsl:with-param name="LineItem7_parent">
								<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$Baseline3/PmtTerms">
							<xsl:variable name="PaymentTerms1" select="."/>
							<xsl:call-template name="PaymentTerms1">
								<xsl:with-param name="PaymentTerms1" select="$PaymentTerms1"/>
								<xsl:with-param name="PaymentTerms1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="SettlementTerms2" select="$Baseline3/SttlmTerms"/>
						<xsl:call-template name="SettlementTerms2">
							<xsl:with-param name="SettlementTerms2" select="$SettlementTerms2"/>
							<xsl:with-param name="SettlementTerms2_parent">
								<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$Baseline3/PmtOblgtn">
							<xsl:variable name="PaymentObligation1" select="."/>
							<xsl:call-template name="PaymentObligation1">
								<xsl:with-param name="PaymentObligation1" select="$PaymentObligation1"/>
								<xsl:with-param name="PaymentObligation1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="RequiredSubmission2" select="$Baseline3/ComrclDataSetReqrd"/>
						<xsl:call-template name="RequiredSubmission2">
							<xsl:with-param name="RequiredSubmission2" select="$RequiredSubmission2"/>
							<xsl:with-param name="RequiredSubmission2_parent">
								<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="RequiredSubmission2_double" select="$Baseline3/TrnsprtDataSetReqrd"/>
						<xsl:call-template name="RequiredSubmission2">
							<xsl:with-param name="RequiredSubmission2" select="$RequiredSubmission2_double"/>
							<xsl:with-param name="RequiredSubmission2_parent">
								<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="RequiredSubmission3" select="$Baseline3/InsrncDataSetReqrd"/>
						<xsl:call-template name="RequiredSubmission3">
							<xsl:with-param name="RequiredSubmission3" select="$RequiredSubmission3"/>
							<xsl:with-param name="RequiredSubmission3_parent">
								<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$Baseline3/CertDataSetReqrd">
							<xsl:variable name="RequiredSubmission4" select="."/>
							<xsl:call-template name="RequiredSubmission4">
								<xsl:with-param name="RequiredSubmission4" select="$RequiredSubmission4"/>
								<xsl:with-param name="RequiredSubmission4_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$Baseline3/OthrCertDataSetReqrd">
							<xsl:variable name="RequiredSubmission5" select="."/>
							<xsl:call-template name="RequiredSubmission5">
								<xsl:with-param name="RequiredSubmission5" select="$RequiredSubmission5"/>
								<xsl:with-param name="RequiredSubmission5_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$Baseline3_pname"/>_<xsl:value-of select="$Baseline3_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Baseline3> end ********** -->
</xsl:stylesheet>
