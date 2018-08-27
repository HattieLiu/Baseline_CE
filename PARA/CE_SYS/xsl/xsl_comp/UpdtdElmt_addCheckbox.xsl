<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="Rplcmnt.xsl"/>
	<xsl:include href="Deltn.xsl"/>
	<xsl:include href="Addtn.xsl"/>
	<xsl:template name="UpdtdElmt">
		<xsl:param name="UpdtdElmt"/>
		<xsl:param name="UpdtdElmt_parentName"/>
		<xsl:variable name="UpdtdElmt_name" select="name($UpdtdElmt)"/>
		<xsl:variable name="UpdtdElmt_pName" select="$UpdtdElmt_parentName"/>
		<xsl:variable name="UpdtdElmtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$UpdtdElmt_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ElmtSeqNbDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:ElmtSeqNb'"/>
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
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="input">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$UpdtdElmt_pName"/></xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$UpdtdElmt_pName"/>')</xsl:attribute>
					<xsl:value-of select="$UpdtdElmtDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$UpdtdElmt_pName"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:UpdtdElmt">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$ElmtSeqNbDesc"/>
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name">Doc:ElmtSeqNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$UpdtdElmt_pName"/>_<xsl:value-of select="$ElmtSeqNbDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$UpdtdElmt/Doc:ElmtSeqNb"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
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
									<xsl:attribute name="id"><xsl:value-of select="$UpdtdElmt_pName"/>_<xsl:value-of select="$ElmtPthDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$UpdtdElmt/Doc:ElmtPth"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
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
									<xsl:attribute name="id"><xsl:value-of select="$UpdtdElmt_pName"/>_<xsl:value-of select="$ElmtNmDesc"/></xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$UpdtdElmt/Doc:ElmtNm"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="Rplcmnt" select="$UpdtdElmt/Doc:Rplcmnt"/>
						<xsl:call-template name="Rplcmnt">
							<xsl:with-param name="Rplcmnt" select="$Rplcmnt"/>
							<xsl:with-param name="Rplcmnt_parentName" select="$UpdtdElmt_parentName"/>
						</xsl:call-template>
						<xsl:variable name="Deltn" select="$UpdtdElmt/Doc:Deltn"/>
						<xsl:call-template name="Deltn">
							<xsl:with-param name="Deltn" select="$Deltn"/>
							<xsl:with-param name="Deltn_parentName" select="$UpdtdElmt_parentName"/>
						</xsl:call-template>
						<xsl:variable name="Addtn" select="$UpdtdElmt/Doc:Addtn"/>
						<xsl:call-template name="Addtn">
							<xsl:with-param name="Addtn" select="$Addtn"/>
							<xsl:with-param name="Addtn_parentName" select="$UpdtdElmt_parentName"/>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
