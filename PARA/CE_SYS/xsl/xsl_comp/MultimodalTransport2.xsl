<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <MultimodalTransport2> Start ********** -->
	<xsl:template name="MultimodalTransport2">
		<xsl:param name="MultimodalTransport2"/>
		<xsl:variable name="MultimodalTransport2_name" select="name($MultimodalTransport2)"/>
		
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$MultimodalTransport2_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PlcOfDlvryDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PlcOfDlvry'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="RailCrrierNmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'RailCrrierNm'"/>
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
					<xsl:for-each select="$MultimodalTransport2">
						<xsl:if test="Doc:PortOfDschrge != '' ">
							<xsl:attribute name="onClick">Swap('_<xsl:value-of select="$MultimodalTransport2_name"/>')</xsl:attribute>
						</xsl:if>
					</xsl:for-each>
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
					<xsl:attribute name="id">_<xsl:value-of select="$MultimodalTransport2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:MltmdlTrnsprt">
						<tr>
							<td/>
						</tr>
						<xsl:for-each select="$MultimodalTransport2/Doc:PlcOfRct">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_name"/>_PlcOfRct</xsl:attribute>
									<xsl:attribute name="id">PlcOfRct</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
									<xsl:attribute name="tsu">N</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						</xsl:for-each>
						<xsl:for-each select="$MultimodalTransport2/Doc:PlcOfDlvry">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$PlcOfDlvryDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MultimodalTransport2_name"/>_PlcOfDlvry</xsl:attribute>
									<xsl:attribute name="id">PlcOfDlvry</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
									<xsl:attribute name="tsu">N</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <MultimodalTransport2> end ********** -->
</xsl:stylesheet>
