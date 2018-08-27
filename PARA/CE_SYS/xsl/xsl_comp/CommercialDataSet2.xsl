<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
    <xsl:include href="DocumentIdentification7.xsl"/>
   <xsl:include href="PartyIdentification9.xsl"/>
   <xsl:include href="LineItem4.xsl"/>
   <xsl:include href="PaymentTerms1.xsl"/>
   <xsl:include href="SettlementTerms1.xsl"/>
<!--  *********** point <CommercialDataSet2> Start ********** -->
	<xsl:template name="CommercialDataSet2">
		<xsl:param name="CommercialDataSet2"/>
		<xsl:variable name="CommercialDataSet2_name" select="name($CommercialDataSet2)"/>
		
	 <xsl:variable name="suDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$CommercialDataSet2_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$CommercialDataSet2_name"/>')</xsl:attribute>
					<xsl:value-of select="$suDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$CommercialDataSet2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="DocumentIdentification1" select="$CommercialDataSet2/Doc:DataSetId"/>
						<xsl:call-template name="DocumentIdentification1">
							<xsl:with-param name="DocumentIdentification1" select="$DocumentIdentification1"/>
							<xsl:with-param name="Docu_FullName">
								<xsl:value-of select="substring($CommercialDataSet2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="DocumentIdentification7" select="$CommercialDataSet2/Doc:ComrclDocRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
							<xsl:with-param name="Docu7_FullName">
								<xsl:value-of select="substring($CommercialDataSet2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification9" select="$CommercialDataSet2/Doc:Buyr"/>
						<xsl:call-template name="PartyIdentification9">
							<xsl:with-param name="PartyIdentification9" select="$PartyIdentification9"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($CommercialDataSet2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification9_double" select="$CommercialDataSet2/Doc:Sellr"/>
						<xsl:call-template name="PartyIdentification9">
							<xsl:with-param name="PartyIdentification9" select="$PartyIdentification9_double"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($CommercialDataSet2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification9_three" select="$CommercialDataSet2/Doc:BllTo"/>
						<xsl:call-template name="PartyIdentification9">
							<xsl:with-param name="PartyIdentification9" select="$PartyIdentification9_three"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($CommercialDataSet2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="LineItem4" select="$CommercialDataSet2/Doc:Goods"/>
						<xsl:call-template name="LineItem4">
							<xsl:with-param name="LineItem4" select="$LineItem4"/>
							<xsl:with-param name="Line_FullName">
								<xsl:value-of select="substring($CommercialDataSet2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PaymentTerms1" select="$CommercialDataSet2/Doc:PmtTerms"/>
						<xsl:call-template name="PaymentTerms1">
							<xsl:with-param name="PaymentTerms1" select="$PaymentTerms1"/>
						</xsl:call-template>
						<xsl:variable name="SettlementTerms1" select="$CommercialDataSet2/Doc:SttlmTerms"/>
						<xsl:call-template name="SettlementTerms1">
							<xsl:with-param name="SettlementTerms1" select="$SettlementTerms1"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <CommercialDataSet2> end ********** -->
	</xsl:stylesheet>