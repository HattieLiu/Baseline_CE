<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
    <xsl:include href="DocumentIdentification1.xsl"/>
    <xsl:include href="DocumentIdentification7.xsl"/>
     
     <xsl:include href="PartyIdentification9.xsl"/>
     <xsl:include href="LineItem5.xsl"/>
<!--  *********** point <Baseline2> Start ********** -->
	<xsl:template name="Baseline2">
		<xsl:param name="Baseline2"/>
		<xsl:variable name="Baseline2_name" select="name($Baseline2)"/>
		<xsl:variable name="baseLineDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$Baseline2_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="svccdDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:SvcCd'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Baseline2_name"/>')</xsl:attribute>
					<xsl:value-of select="$baseLineDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Baseline2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:element name="TD">
							<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
							<xsl:value-of select="$svccdDesc"/>
							<xsl:element name="INPUT">
								<xsl:attribute name="type">text</xsl:attribute>
								<xsl:attribute name="name"><xsl:value-of select="$Baseline2_name"/>_SvcCd</xsl:attribute>
								<xsl:attribute name="id"><xsl:value-of select="$Baseline2_name"/>_SvcCd</xsl:attribute>
								<xsl:attribute name="class">CHAR_M</xsl:attribute>
								<xsl:attribute name="length">35</xsl:attribute>
								<xsl:attribute name="maxlength">35</xsl:attribute>
								<xsl:attribute name="value"><xsl:value-of select="$Baseline2/Doc:SvcCd"/></xsl:attribute>
							</xsl:element>
						</xsl:element>
						<xsl:variable name="DocumentIdentification1" select="$Baseline2/Doc:SubmitrBaselnId"/>
						<xsl:call-template name="DocumentIdentification1">
							<xsl:with-param name="DocumentIdentification1" select="$DocumentIdentification1"/>
							<xsl:with-param name="Docu_FullName">
								<xsl:value-of select="substring($Baseline2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="DocumentIdentification7" select="$Baseline2/Doc:PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
							    <xsl:with-param name="Docu7_FullName">
                                    <xsl:value-of select="substring($Baseline2_name,5)"/>
                                     </xsl:with-param>                            
						</xsl:call-template>
						<xsl:variable name="BICIdentification1" select="$Baseline2/Doc:BuyrBk"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
							<xsl:with-param name="BIC_FullName">
								<xsl:value-of select="substring($Baseline2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="BICIdentification1_double" select="$Baseline2/Doc:SellrBk"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1_double"/>
							<xsl:with-param name="BIC_FullName">
								<xsl:value-of select="substring($Baseline2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification9" select="$Baseline2/Doc:Buyr"/>
						<xsl:call-template name="PartyIdentification9">
							<xsl:with-param name="PartyIdentification9" select="$PartyIdentification9"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($Baseline2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification9_double" select="$Baseline2/Doc:Sellr"/>
						<xsl:call-template name="PartyIdentification9">
							<xsl:with-param name="PartyIdentification9" select="$PartyIdentification9_double"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($Baseline2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification9_three" select="$Baseline2/Doc:BllTo"/>
						<xsl:call-template name="PartyIdentification9">
							<xsl:with-param name="PartyIdentification9" select="$PartyIdentification9_three"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($Baseline2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification9_four" select="$Baseline2/Doc:ShipTo"/>
						<xsl:call-template name="PartyIdentification9">
							<xsl:with-param name="PartyIdentification9" select="$PartyIdentification9_four"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($Baseline2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification9_five" select="$Baseline2/Doc:Consgn"/>
						<xsl:call-template name="PartyIdentification9">
							<xsl:with-param name="PartyIdentification9" select="$PartyIdentification9_five"/>
							<xsl:with-param name="Part_FullName">
								<xsl:value-of select="substring($Baseline2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="LineItem5" select="$Baseline2/Doc:Goods"/>
						<xsl:call-template name="LineItem5">
							<xsl:with-param name="LineItem5" select="$LineItem5"/>
							<xsl:with-param name="Line1_FullName">
								<xsl:value-of select="substring($Baseline2_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Baseline2> end ********** -->
</xsl:stylesheet>
