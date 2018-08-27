<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
     
<!--  *********** point <BICIdentification1>  start ********** -->
	<xsl:template name="BICIdentification1">
		<xsl:param name="BICIdentification1"/>
		<xsl:param name="BIC_FullName"/>
		<xsl:param name="BICIdentification1_parent"/>
		<xsl:variable name="BIC_FullName_fox" select="$BIC_FullName"/>
		<xsl:variable name="BICIdentification1_name" select="name($BICIdentification1)"/>
		<xsl:variable name="BICIdentification1_pname" select="$BICIdentification1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$BICIdentification1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="submissnIDDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$BIC_FullName_fox"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">2</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$BICIdentification1_pname"/>_<xsl:value-of select="$BIC_FullName_fox"/>_<xsl:value-of select="$BICIdentification1_name"/>')</xsl:attribute>
					<xsl:value-of select="$fldDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">2</xsl:attribute>
				<xsl:attribute name="width">100%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$BICIdentification1_pname"/>_<xsl:value-of select="$BIC_FullName_fox"/>_<xsl:value-of select="$BICIdentification1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:100%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:text>BIC:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$BICIdentification1_pname"/>_<xsl:value-of select="$BICIdentification1_name"/>_BIC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$BICIdentification1_pname"/>_<xsl:value-of select="$BICIdentification1_name"/>_BIC</xsl:attribute>
									<xsl:attribute name="class">W_11</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$BICIdentification1/Doc:BIC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <BICIdentification1> end ********** -->
</xsl:stylesheet>
