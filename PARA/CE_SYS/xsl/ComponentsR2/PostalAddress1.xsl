<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="PostalAddress1">
		<xsl:param name="PostalAddress1"/>
		<xsl:param name="PostalAddress1_parent"/>
		<xsl:variable name="PostalAddress1_name" select="name($PostalAddress1)"/>
		<xsl:variable name="PostalAddress1_pname" select="$PostalAddress1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$PostalAddress1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AdrTpDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AdrTp'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AdrLineDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AdrLine'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="StrtNmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'StrtNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BldgNbDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'BldgNb'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PstCdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PstCd'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TwnNmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TwnNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CtrySubDvsnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CtrySubDvsn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CtryDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Ctry'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$AdrTpDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>_AdrTp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>_AdrTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PostalAddress1/AdrTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$StrtNmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>_StrtNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>_StrtNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PostalAddress1/StrtNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$BldgNbDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>_BldgNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>_BldgNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PostalAddress1/BldgNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$PstCdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>_PstCd</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>_PstCd</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PostalAddress1/PstCd"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TwnNmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>_TwnNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>_TwnNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PostalAddress1/TwnNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CtrySubDvsnDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>_CtrySubDvsn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>_CtrySubDvsn</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PostalAddress1/CtrySubDvsn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CtryDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>_Ctry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>_Ctry</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PostalAddress1/Ctry"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:for-each select="$PostalAddress1/AdrLine">
								<xsl:element name="TD">
									<tr>
										<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
										<xsl:attribute name="height">25</xsl:attribute>
										<xsl:value-of select="$AdrLineDesc"/>
										<xsl:element name="INPUT">
											<xsl:attribute name="type">text</xsl:attribute>
											<xsl:attribute name="name"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>_AdrLine</xsl:attribute>
											<xsl:attribute name="id"><xsl:value-of select="$PostalAddress1_pname"/>_<xsl:value-of select="$PostalAddress1_name"/>_AdrLine</xsl:attribute>
											<xsl:attribute name="class">CHAR_P</xsl:attribute>
											<xsl:attribute name="length">35</xsl:attribute>
											<xsl:attribute name="maxlength">35</xsl:attribute>
											<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										</xsl:element>
									</tr>
								</xsl:element>
							</xsl:for-each>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
