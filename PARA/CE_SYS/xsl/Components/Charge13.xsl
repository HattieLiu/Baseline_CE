<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
  <xsl:include href="ChargesDetails2.xsl"/>
<!--  *********** point <Charge13> Start ********** -->
	<xsl:template name="Charge13">
		<xsl:param name="Charge13"/>
		<xsl:param name="Charge13_parent"/>
		<xsl:param name="stmt" select="Doc:FrghtChrgs"/>
		<xsl:param name="Char_FullName"/>
		<xsl:variable name="Charge13_name" select="name($Charge13)"/>
		<xsl:variable name="Charge13_pname" select="$Charge13_parent"/>
		<xsl:variable name="Char_FullName_fox" select="$Char_FullName"/>
		
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$Charge13_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TpDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Tp'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Charge13_pname"/>_<xsl:value-of select="$Char_FullName_fox"/>_<xsl:value-of select="$Charge13_name"/>')</xsl:attribute>
					<xsl:value-of select="$fldDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$Charge13_pname"/>_<xsl:value-of select="$Char_FullName_fox"/>_<xsl:value-of select="$Charge13_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TpDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Charge13_pname"/>_<xsl:value-of select="$Charge13_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Charge13_pname"/>_<xsl:value-of select="$Charge13_name"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Charge13/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:for-each select="$Charge13/Doc:Chrgs">
						<xsl:variable name="ChargesDetails2" select="."/>
						<xsl:call-template name="ChargesDetails2">
							<xsl:with-param name="ChargesDetails2" select="$ChargesDetails2"/>
							<xsl:with-param name="Char2_FullName">
								<xsl:value-of select="$Char_FullName_fox"/>_<xsl:value-of select="$Charge13_name"/>
							</xsl:with-param>
							<xsl:with-param name="ChargesDetails2_parent">
							    <xsl:value-of select="$Char_FullName_fox"/>_<xsl:value-of select="$Charge13_name"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Charge13> end ********** -->
</xsl:stylesheet>
