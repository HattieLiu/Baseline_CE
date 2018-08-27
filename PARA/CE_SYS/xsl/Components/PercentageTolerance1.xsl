<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <PercentageTolerance1> start ********** -->
	<xsl:template name="PercentageTolerance1">
		<xsl:param name="PercentageTolerance1"/>
		<xsl:param name="PercentageTolerance1_parent"/>
		<xsl:variable name="PercentageTolerance1_name" select="name($PercentageTolerance1)"/>
		<xsl:variable name="PercentageTolerance1_pname" select="$PercentageTolerance1_parent"/>
		<xsl:variable name="QtyTlrnceDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$PercentageTolerance1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PlusPctDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PlusPct'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="MnsPctDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:MnsPct'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PercentageTolerance1_pname"/>_<xsl:value-of select="$PercentageTolerance1_name"/>')</xsl:attribute>
					<xsl:value-of select="$QtyTlrnceDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$PercentageTolerance1_pname"/>_<xsl:value-of select="$PercentageTolerance1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$PlusPctDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PercentageTolerance1_pname"/>_<xsl:value-of select="$PercentageTolerance1_name"/>_PlusPct</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PercentageTolerance1_pname"/>_<xsl:value-of select="$PercentageTolerance1_name"/>_PlusPct</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PercentageTolerance1/Doc:PlusPct"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$MnsPctDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PercentageTolerance1_pname"/>_<xsl:value-of select="$PercentageTolerance1_name"/>_MnsPct</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PercentageTolerance1_pname"/>_<xsl:value-of select="$PercentageTolerance1_name"/>_MnsPct</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PercentageTolerance1/Doc:MnsPct"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <DocumentIdentification3> end ********** -->
</xsl:stylesheet>
