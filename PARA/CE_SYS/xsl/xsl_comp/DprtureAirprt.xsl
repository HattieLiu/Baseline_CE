<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu" xmlns:fn="http://www.mycompany.com/mynamespace">
	<xsl:template name="DprtureAirprt">
		<xsl:param name="DprtureAirprt"/>
		<xsl:param name="DprtureAirprt_parentName"/>
		<xsl:variable name="DprtureAirprt_name" select="name($DprtureAirprt)"/>
		<xsl:variable name="DprtureAirprt_pName" select="$DprtureAirprt_parentName"/>
		<xsl:variable name="DprtureAirprtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$DprtureAirprt_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AirprtCdDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:AirprtCd'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OthrAirprtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:OthrAirprtDesc'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TwnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:Twn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AirprtNmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:AirprtNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:element name="INPUT">
					<xsl:attribute name="type">checkbox</xsl:attribute>
					<xsl:attribute name="name"><xsl:value-of select="$DprtureAirprt_pName"/>_<xsl:value-of select="$DprtureAirprt_name"/></xsl:attribute>
					<xsl:attribute name="onClick">clickcheck(this)</xsl:attribute>
					<xsl:attribute name="tsu">N</xsl:attribute>
				</xsl:element>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$DprtureAirprt_pName"/>_<xsl:value-of select="$DprtureAirprt_name"/>')</xsl:attribute>
					<xsl:value-of select="$DprtureAirprtDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$DprtureAirprt_pName"/>_<xsl:value-of select="$DprtureAirprt_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DprtureAirprt_pName"/>_<xsl:value-of select="$DprtureAirprt_name"/>_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$DprtureAirprt_pName"/>_<xsl:value-of select="$DprtureAirprt_name"/>_ck</xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
									<!--<xsl:if test="$DprtureAirprt/Doc:AirprtCd != ''">
										<xsl:attribute name="checked">true</xsl:attribute>
									</xsl:if>-->
								</xsl:element>
								<xsl:value-of select="$AirprtCdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DprtureAirprt_name"/>_AirprtCd</xsl:attribute>
									<xsl:attribute name="name">Doc:AirprtCd</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DprtureAirprt/Doc:AirprtCd"/></xsl:attribute>
									<xsl:attribute name="ch"><xsl:value-of select="$DprtureAirprt_pName"/>_<xsl:value-of select="$DprtureAirprt_name"/></xsl:attribute>
									<xsl:attribute name="multi">N</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DprtureAirprt_pName"/>_<xsl:value-of select="$DprtureAirprt_name"/>_check</xsl:attribute>
									<xsl:attribute name="tx"><xsl:value-of select="$DprtureAirprt_pName"/>_<xsl:value-of select="$DprtureAirprt_name"/></xsl:attribute>
									<xsl:attribute name="onClick">radioCheck_input()</xsl:attribute>
								</xsl:element>
								<a>
									<xsl:attribute name="class">Heading3</xsl:attribute>
									<xsl:attribute name="style">cursor:hand</xsl:attribute>
									<xsl:attribute name="onClick">Swap('<xsl:value-of select="$DprtureAirprt_pName"/>_<xsl:value-of select="$DprtureAirprt_name"/>_Doc:OthrAirprtDesc')</xsl:attribute>
									<xsl:value-of select="$OthrAirprtDesc"/>
								</a>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:element name="DIV">
									<xsl:attribute name="id"><xsl:value-of select="$DprtureAirprt_pName"/>_<xsl:value-of select="$DprtureAirprt_name"/>_Doc:OthrAirprtDesc</xsl:attribute>
									<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
									<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
										<tr>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:value-of select="$TwnDesc"/>
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name">Doc:Twn</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$DprtureAirprt_name"/>_OthrAirprtDesc_Twn</xsl:attribute>
													<xsl:attribute name="class">CHAR_M</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$DprtureAirprt/Doc:OthrAirprtDesc/Doc:Twn"/></xsl:attribute>
													<xsl:attribute name="ch"><xsl:value-of select="$DprtureAirprt_pName"/>_<xsl:value-of select="$DprtureAirprt_name"/>_ck</xsl:attribute>
													<xsl:attribute name="multi">N</xsl:attribute>
												</xsl:element>
											</xsl:element>
											<xsl:element name="TD">
												<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
												<xsl:attribute name="height">25</xsl:attribute>
												<xsl:value-of select="$AirprtNmDesc"/>
												<xsl:element name="INPUT">
													<xsl:attribute name="type">text</xsl:attribute>
													<xsl:attribute name="name">Doc:AirprtNm</xsl:attribute>
													<xsl:attribute name="id"><xsl:value-of select="$DprtureAirprt_name"/>_OthrAirprtDesc_AirprtNm</xsl:attribute>
													<xsl:attribute name="class">CHAR_M</xsl:attribute>
													<xsl:attribute name="length">35</xsl:attribute>
													<xsl:attribute name="maxlength">35</xsl:attribute>
													<xsl:attribute name="value"><xsl:value-of select="$DprtureAirprt/Doc:OthrAirprtDesc/Doc:AirprtNm"/></xsl:attribute>
													<xsl:attribute name="ch"><xsl:value-of select="$DprtureAirprt_pName"/>_<xsl:value-of select="$DprtureAirprt_name"/>_ck</xsl:attribute>
													<xsl:attribute name="multi">N</xsl:attribute>
												</xsl:element>
											</xsl:element>
										</tr>
									</table>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
