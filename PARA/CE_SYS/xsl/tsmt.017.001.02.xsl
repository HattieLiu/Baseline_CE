<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
	<xsl:include href="public.xsl"/>
	<xsl:include href="Components/MessageIdentification1.xsl"/>
	<xsl:include href="Components/DataSetSubmissionReferences1.xsl"/>
	<xsl:include href="Components/DocumentIdentification3.xsl"/>
	<!-- <xsl:include href="Components/DocumentIdentification5.xsl"/> -->
	<xsl:include href="Components/TransactionStatus1.xsl"/>
	<!-- <xsl:include href="Components/BICIdentification1.xsl"/> -->
	<xsl:include href="Components/CommercialDataSet2.xsl"/>
	<xsl:include href="Components/TransportDataSet2.xsl"/>
	<xsl:include href="Components/PendingActivity1.xsl"/>
	<xsl:include href="Components/DocumentIdentification1.xsl"/>
	<xsl:include href="Components/SimpleIdentificationInformation.xsl"/>
	<xsl:template match="Doc:Document/Doc:tsmt.017.001.02">
	     <xsl:param name="stmt" select="Doc:tsmt.017.001.02"/>
		<html>
			<head>
				<title>CS Eximbills Enterprise Trade Servise Utility Message Viewer</title>
				<LINK REL="stylesheet" TYPE="text/css" HREF="../TSU/theme/swift.css"/>
				<script language="JavaScript">
			function Swap(n){
			var x;
			y=document.getElementById(n);
			y=y.style;
			if(y.display=="none"){
				y.display="block"		
				}
			else if(y.display=="block"){
				y.display="none";
				}
			}
		</script>
			</head>
			<body>
				<table width="99%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="style">height:22</xsl:attribute>
							<xsl:attribute name="colspan">5</xsl:attribute>
							<xsl:attribute name="class">Heading2</xsl:attribute>
							<xsl:text>ForwardDataSetSubmissionReport: (tsmt.017.001.02)</xsl:text>
						</xsl:element>
					</tr>
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="style">height:22</xsl:attribute>
							<xsl:attribute name="colspan">5</xsl:attribute>
							<xsl:attribute name="class">ContentBorderTopLeft</xsl:attribute>
							<xsl:text>.</xsl:text>
						</xsl:element>
					</tr>
					<tr>
						<td width="3%" height="22" align="right" class="ContentBorderLeft">.</td>
						<td colspan="10">
							<table width="99%" border="0" cellpadding="0" cellspacing="0">
	
								<!-- RptId -->
								<xsl:variable name="MessageIdentification1" select="Doc:RptId"/>
								<xsl:call-template name="MessageIdentification1">
									<xsl:with-param name="MessageIdentification1" select="$MessageIdentification1"/>
								</xsl:call-template>
								<!-- TxRltdRefs -->
								<xsl:for-each select="Doc:SubmitrTxRef">
								<xsl:variable name="DataSetSubmissionReferences1" select="."/>
								<xsl:call-template name="DataSetSubmissionReferences1">
									<xsl:with-param name="DataSetSubmissionReferences1" select="$DataSetSubmissionReferences1"/>
									<xsl:with-param name="DataSetSubmissionReferences1_parent">
									      <xsl:number value="position()"/>_<xsl:value-of select="$stmt"/>
									</xsl:with-param>
								</xsl:call-template>
								</xsl:for-each>
								<!-- TSUBaselnId -->
								<xsl:variable name="DocumentIdentification3" select="Doc:TSUBaselnId"/>
								<xsl:call-template name="DocumentIdentification3">
									<xsl:with-param name="DocumentIdentification3" select="$DocumentIdentification3"/>
								</xsl:call-template>
								<!-- TxSts -->
								<xsl:variable name="TransactionStatus1" select="Doc:TxSts"/>
								<xsl:call-template name="TransactionStatus1">
									<xsl:with-param name="TransactionStatus1" select="$TransactionStatus1"/>
								</xsl:call-template>
								<!-- UsrTxRef -->
								<xsl:for-each select="Doc:UsrTxRef">
								<xsl:variable name="DocumentIdentification5" select="."/>
								<xsl:call-template name="DocumentIdentification5">
									<xsl:with-param name="DocumentIdentification5" select="$DocumentIdentification5"/>
									<xsl:with-param name="DocumentIdentification5_parent">
									    <xsl:number value="position()"/>_<xsl:value-of select="$stmt"/>
									</xsl:with-param>
								</xsl:call-template>
								</xsl:for-each>
								<!-- BuyrBk -->
								<xsl:variable name="BICIdentification1" select="Doc:BuyrBk"/>
								<xsl:call-template name="BICIdentification1">
									<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
								</xsl:call-template>
								<!-- SellrBk -->
								<xsl:variable name="BICIdentification1_double" select="Doc:SellrBk"/>
								<xsl:call-template name="BICIdentification1">
									<xsl:with-param name="BICIdentification1" select="$BICIdentification1_double"/>
								</xsl:call-template>
								<!-- ComrclDataSet -->
							
								<!--	 </xsl:when>
	 <xsl:otherwise>
	 	<xsl:apply-templates select="ReqForActn" />
	 </xsl:otherwise> 
    </xsl:choose> -->
								<!-- bottom -->
							</table>
						</td>
					</tr>
					<tr>
						<xsl:element name="TD">
							<xsl:attribute name="class">ContentBorderBottomLeft</xsl:attribute>
							<xsl:text disable-output-escaping="yes">.</xsl:text>
						</xsl:element>
						<xsl:element name="TD">
							<xsl:attribute name="class">FieldName</xsl:attribute>
							<xsl:text disable-output-escaping="yes">.</xsl:text>
						</xsl:element>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
