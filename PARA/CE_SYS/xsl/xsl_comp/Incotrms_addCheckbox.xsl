<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:template name="Incotrms">
		<xsl:param name="Incotrms"/>
		<xsl:param name="Incotrms_parentName"/>
		<xsl:variable name="Incotrms_name" select="name($Incotrms)"/>
		<xsl:variable name="Incotrms_pName" select="$Incotrms_parentName"/>
		<xsl:variable name="IncotrmsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$Incotrms_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CdDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Cd'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OthrDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Othr'"/>
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
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="input">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$Incotrms_pName"/></xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Incotrms_pName"/>')</xsl:attribute>
					<xsl:value-of select="$IncotrmsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Incotrms_pName"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:Incotrms">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:number value="position()"/>_Doc:Incotrms_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:number value="position()"/>_Doc:Incotrms_Doc:Cd</xsl:attribute>
									<xsl:attribute name="match"><xsl:number value="position()"/>_Doc:Incotrms_Doc:Othr</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
								</xsl:element>
								<xsl:value-of select="$CdDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:Cd</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CdDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Incotrms/Doc:Cd"/></xsl:attribute>
									<xsl:attribute name="ch"><xsl:number value="position()"/>_Doc:Incotrms_Doc:Othr</xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:Incotrms</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:number value="position()"/>_Doc:Incotrms_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:number value="position()"/>_Doc:Incotrms_Doc:Othr</xsl:attribute>
									<xsl:attribute name="match"><xsl:number value="position()"/>_Doc:Incotrms_Doc:Othr</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
								</xsl:element>
								<xsl:value-of select="$OthrDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:Othr</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$OthrDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Incotrms/Doc:Othr"/></xsl:attribute>
									<xsl:attribute name="ch"><xsl:number value="position()"/>_Doc:Incotrms_Doc:Cd</xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
									<xsl:attribute name="tbi">Doc:Incotrms</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$LctnDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:Lctn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LctnDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Incotrms/Doc:Lctn"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
