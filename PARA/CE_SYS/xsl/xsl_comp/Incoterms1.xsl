<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <Incoterms1> Start ********** -->
	<xsl:template name="Incoterms1">
		<xsl:param name="Incoterms1"/>
		<xsl:param name="Inco1_FullName"/>
		<xsl:variable name="Incoterms1_name" select="name($Incoterms1)"/>
		<xsl:variable name="Inco1_FullName_fox" select="$Inco1_FullName"/>
		<xsl:variable name="IncotrmsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$Incoterms1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OthrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Othr'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CdDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Cd'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="LctnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Lctn'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#A7B8C7</xsl:attribute>
				<xsl:attribute name="colspan">4</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Inco1_FullName_fox"/>_<xsl:value-of select="$Incoterms1_name"/>')</xsl:attribute>
					<xsl:value-of select="$IncotrmsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="class">ContentBorderLeftRithtBottom</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Inco1_FullName_fox"/>_<xsl:value-of select="$Incoterms1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Inco1_FullName_fox"/>_Cd_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Inco1_FullName_fox"/>_Cd_check</xsl:attribute>
									<xsl:for-each select="$Incoterms1">
										<xsl:if test="Doc:Cd!= ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							 <xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CdDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($Incoterms1_name,5)"/>_Cd</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($Incoterms1_name,5)"/>_Cd</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Incoterms1/Doc:Cd"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Inco1_FullName_fox"/>_Cd_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Inco1_FullName_fox"/>_Cd_check</xsl:attribute>
									<xsl:for-each select="$Incoterms1">
										<xsl:if test="Doc:Othr != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$OthrDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="substring($Incoterms1_name,5)"/>_Othr</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="substring($Incoterms1_name,5)"/>_Othr</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Incoterms1/Doc:Othr"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$LctnDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Incoterms1_name"/>_Lctn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$Incoterms1_name"/>_Lctn</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Incoterms1/Doc:Lctn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							</xsl:element>
							<xsl:element name="TD">
							</xsl:element>
							<xsl:element name="TD">
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Incoterms1> end ********** -->
</xsl:stylesheet>
