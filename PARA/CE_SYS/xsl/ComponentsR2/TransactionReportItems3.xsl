<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="DocumentIdentification3.xsl"/>
	<xsl:include href="TransactionStatus4.xsl"/>
	<xsl:include href="DocumentIdentification5.xsl"/>
	<xsl:include href="DocumentIdentification7.xsl"/>
	<xsl:include href="PartyIdentification26.xsl"/>
	<xsl:include href="BICIdentification1.xsl"/>
	<xsl:include href="PendingActivity2.xsl"/>
	<!--  *********** point <TransactionReportItems3> Start ********** -->
	<xsl:template name="TransactionReportItems3">
		<xsl:param name="TransactionReportItems3"/>
		<xsl:param name="TransactionReportItems3_parent"/>
		<xsl:variable name="TransactionReportItems3_name" select="name($TransactionReportItems3)"/>
		<xsl:variable name="TransactionReportItems3_pname" select="$TransactionReportItems3_parent"/>
		<xsl:variable name="RptdItmsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$TransactionReportItems3_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TxIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TxId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BuyrBkCtryDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'BuyrBkCtry'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="SellrBkCtryDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'SellrBkCtry'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OutsdngAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OutsdngAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TtlNetAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TtlNetAmt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>')</xsl:attribute>
					<xsl:value-of select="$RptdItmsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TxIdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransactionReportItems3/TxId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$BuyrBkCtryDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>_BuyrBkCtry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>_BuyrBkCtry</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransactionReportItems3/BuyrBkCtry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$SellrBkCtryDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>_SellrBkCtry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>_SellrBkCtry</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransactionReportItems3/SellrBkCtry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$OutsdngAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>_OutsdngAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>_OutsdngAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransactionReportItems3/OutsdngAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>_OutsdngAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>_OutsdngAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransactionReportItems3/OutsdngAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TtlNetAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>_TtlNetAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>_TtlNetAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransactionReportItems3/TtlNetAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>_TtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>_TtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransactionReportItems3/TtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="DocumentIdentification3" select="$TransactionReportItems3/EstblishdBaselnId"/>
						<xsl:call-template name="DocumentIdentification3">
							<xsl:with-param name="DocumentIdentification3" select="$DocumentIdentification3"/>
							<xsl:with-param name="DocumentIdentification3_parent">
								<xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="TransactionStatus4" select="$TransactionReportItems3/TxSts"/>
						<xsl:call-template name="TransactionStatus4">
							<xsl:with-param name="TransactionStatus4" select="$TransactionStatus4"/>
							<xsl:with-param name="TransactionStatus4_parent">
								<xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="UsrTxRef">
							<xsl:variable name="DocumentIdentification5" select="."/>
							<xsl:call-template name="DocumentIdentification5">
								<xsl:with-param name="DocumentIdentification5" select="$DocumentIdentification5"/>
								<xsl:with-param name="DocumentIdentification5_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="DocumentIdentification7" select="$TransactionReportItems3/PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
							<xsl:with-param name="DocumentIdentification7_parent">
								<xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26" select="$TransactionReportItems3/Buyr"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26_double" select="$TransactionReportItems3/Sellr"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26_double"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="BICIdentification1" select="$TransactionReportItems3/BuyrBk"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
							<xsl:with-param name="BICIdentification1_parent">
								<xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="BICIdentification1_double" select="$TransactionReportItems3/SellrBk"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1_double"/>
							<xsl:with-param name="BICIdentification1_parent">
								<xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$TransactionReportItems3/OblgrBk">
							<xsl:variable name="BICIdentification1_three" select="."/>
							<xsl:call-template name="BICIdentification1">
								<xsl:with-param name="BICIdentification1" select="$BICIdentification1_three"/>
								<xsl:with-param name="BICIdentification1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$TransactionReportItems3/SubmitgBk">
							<xsl:variable name="BICIdentification1_four" select="."/>
							<xsl:call-template name="BICIdentification1">
								<xsl:with-param name="BICIdentification1" select="$BICIdentification1_four"/>
								<xsl:with-param name="BICIdentification1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$TransactionReportItems3/PdgReqForActn">
							<xsl:variable name="PendingActivity2" select="."/>
							<xsl:call-template name="PendingActivity2">
								<xsl:with-param name="PendingActivity2" select="$PendingActivity2"/>
								<xsl:with-param name="PendingActivity2_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$TransactionReportItems3_pname"/>_<xsl:value-of select="$TransactionReportItems3_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
