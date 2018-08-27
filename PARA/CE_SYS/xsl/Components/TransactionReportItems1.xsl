<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
  <xsl:include href="DocumentIdentification3.xsl"/>
  <xsl:include href="TransactionStatus1.xsl"/>
  <xsl:include href="DocumentIdentification5.xsl"/>
  <xsl:include href="DocumentIdentification7.xsl"/>
  <xsl:include href="PartyIdentification5.xsl"/>
  <xsl:include href="PendingActivity1.xsl"/>
  <!--  *********** point <TransactionReportItems1> Start ********** -->
	<xsl:template name="TransactionReportItems1">
		<xsl:param name="TransactionReportItems1"/>
		<xsl:param name="TransactionReportItems1_parent"/>
		<xsl:param name="stmt1" select="Doc:RptdItms"/>
		<xsl:variable name="TransactionReportItems1_name" select="name($TransactionReportItems1)"/>
		<xsl:variable name="TransactionReportItems1_pname" select="$TransactionReportItems1_parent"/>
		<xsl:variable name="submissnIDDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$TransactionReportItems1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IdentificationDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Id'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransactionReportItems1_pname"/>_<xsl:value-of select="$TransactionReportItems1_name"/>')</xsl:attribute>
					<xsl:value-of select="$submissnIDDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems1_pname"/>_<xsl:value-of select="$TransactionReportItems1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>TxId:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransactionReportItems1_pname"/>_<xsl:value-of select="$TransactionReportItems1_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems1_pname"/>_<xsl:value-of select="$TransactionReportItems1_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransactionReportItems1/Doc:TxId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="DocumentIdentification3" select="$TransactionReportItems1/Doc:TSUBaselnId"/>
						<xsl:call-template name="DocumentIdentification3">
							<xsl:with-param name="DocumentIdentification3" select="$DocumentIdentification3"/>
						</xsl:call-template>
						<xsl:variable name="TransactionStatus1" select="$TransactionReportItems1/Doc:TxSts"/>
						<xsl:call-template name="TransactionStatus1">
							<xsl:with-param name="TransactionStatus1" select="$TransactionStatus1"/>
						</xsl:call-template>
						<xsl:for-each select="Doc:UsrTxRef">
								<xsl:variable name="DocumentIdentification5" select="."/>
								<xsl:call-template name="DocumentIdentification5">
									<xsl:with-param name="DocumentIdentification5" select="$DocumentIdentification5"/>
									<xsl:with-param name="DocumentIdentification5_parent">
									     <xsl:number value="position()"/>_<xsl:value-of select="$stmt1"/>
									</xsl:with-param>
								</xsl:call-template>
								</xsl:for-each>
						<xsl:variable name="DocumentIdentification7" select="$TransactionReportItems1/Doc:PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification5" select="$TransactionReportItems1/Doc:Buyr"/>
						<xsl:call-template name="PartyIdentification5">
							<xsl:with-param name="PartyIdentification5" select="$PartyIdentification5"/>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification5_double" select="$TransactionReportItems1/Doc:Sellr"/>
						<xsl:call-template name="PartyIdentification5">
							<xsl:with-param name="PartyIdentification5" select="$PartyIdentification5_double"/>
						</xsl:call-template>
						<xsl:variable name="BICIdentification1" select="$TransactionReportItems1/Doc:BuyrBk"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Buyer Bank Country:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransactionReportItems1_pname"/>_<xsl:value-of select="$TransactionReportItems1_name"/>_BuyrBkCtry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems1_pname"/>_<xsl:value-of select="$TransactionReportItems1_name"/>_BuyrBkCtry</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransactionReportItems1/Doc:BuyrBkCtry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="BICIdentification1_double" select="$TransactionReportItems1/Doc:SellrBk"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1_double"/>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Seller Bank Country:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransactionReportItems1_pname"/>_<xsl:value-of select="$TransactionReportItems1_name"/>_SellrBkCtry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems1_pname"/>_<xsl:value-of select="$TransactionReportItems1_name"/>_SellrBkCtry</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransactionReportItems1/Doc:SellrBkCtry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>OutsdngAmt:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransactionReportItems1_pname"/>_<xsl:value-of select="$TransactionReportItems1_name"/>_OutsdngAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransactionReportItems1_pname"/>_<xsl:value-of select="$TransactionReportItems1_name"/>_OutsdngAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransactionReportItems1/Doc:OutsdngAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:for-each select="$TransactionReportItems1/Doc:PdgReqForActn">
						<xsl:variable name="PendingActivity1" select="."/>
						<xsl:call-template name="PendingActivity1">
							<xsl:with-param name="PendingActivity1" select="$PendingActivity1"/>
							<xsl:with-param name="PendingActivity1_parent">
							     <xsl:number value="position()"/>_<xsl:value-of select="$stmt1"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>