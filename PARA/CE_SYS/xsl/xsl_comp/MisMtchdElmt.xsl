<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:template name="MisMtchdElmt">
		<xsl:param name="MisMtchdElmt"/>
		<xsl:param name="MisMtchdElmt_parentName"/>
		<xsl:variable name="MisMtchdElmt_name" select="name($MisMtchdElmt)"/>
		<xsl:variable name="MisMtchdElmt_pName" select="$MisMtchdElmt_parentName"/>
		<xsl:variable name="MisMtchdElmtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$MisMtchdElmt_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="DocIndxDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:DocIndx'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ElmtPthDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:ElmtPth'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ElmtNmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:ElmtNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ElmtValDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:ElmtVal'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="input">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$MisMtchdElmt_pName"/>_Doc:MisMtchdElmt</xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$MisMtchdElmt_pName"/>_<xsl:value-of select="$MisMtchdElmt_name"/>')</xsl:attribute>
					<xsl:value-of select="$MisMtchdElmtDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$MisMtchdElmt_pName"/>_<xsl:value-of select="$MisMtchdElmt_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:MisMtchdElmt">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$DocIndxDesc"/>
									<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name">Doc:DocIndx</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$DocIndxDesc"/></xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="$MisMtchdElmt/Doc:DocIndx"/></xsl:attribute>
										<xsl:attribute name="multi">N</xsl:attribute>
										<xsl:attribute name="tbi">Doc:MisMtchdElmt</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$ElmtPthDesc"/>
									<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name">Doc:ElmtPth</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$ElmtPthDesc"/></xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="$MisMtchdElmt/Doc:ElmtPth"/></xsl:attribute>
										<xsl:attribute name="multi">N</xsl:attribute>
										<xsl:attribute name="tbi">Doc:MisMtchdElmt</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$ElmtNmDesc"/>
									<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name">Doc:ElmtNm</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$ElmtNmDesc"/></xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="$MisMtchdElmt/Doc:ElmtNm"/></xsl:attribute>
										<xsl:attribute name="multi">N</xsl:attribute>
										<xsl:attribute name="tbi">Doc:MisMtchdElmt</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$ElmtValDesc"/>
									<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name">Doc:ElmtVal</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$ElmtValDesc"/></xsl:attribute>
										<xsl:attribute name="class">CHAR_M</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="$MisMtchdElmt/Doc:ElmtVal"/></xsl:attribute>
										<xsl:attribute name="multi">N</xsl:attribute>
										<xsl:attribute name="tbi">Doc:MisMtchdElmt</xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
