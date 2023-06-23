<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:my="my:my" exclude-result-prefixes="my">

	<xsl:param name="pLang" select="'en'"/>
	<my:texts>
		<dot>.</dot>
		<pageTitle lang="en">This is the title in English</pageTitle>
		<pageTitle lang="fr">Titre en français</pageTitle>
		<enabled lang="en">enabled</enabled>
		<enabled lang="fr">activé</enabled>
		<disabled lang="en">disabled</disabled>
		<disabled lang="fr">inactive</disabled>
		<secure lang="en">secure</secure>
		<secure lang="fr">sécurisée</secure>
		<unsecure lang="en">unsecure</unsecure>
		<unsecure lang="fr">non sécurisée</unsecure>
		<vulnerable lang="en">Vulnerable</vulnerable>
		<vulnerable lang="fr">Vulnérable</vulnerable>
		<notVulnerable lang="en">Not vulnerable</notVulnerable>
		<notVulnerable lang="fr">Non vulnérable</notVulnerable>
		<compTLS lang="en">TLS compression is </compTLS>
		<compTLS lang="fr">La compression TLS est </compTLS>
		<negoNotSupported lang="en">Renegociation is not supported.</negoNotSupported>
		<negoNotSupported lang="fr">La renégociation n'est pas supportée.</negoNotSupported>
		<negoSupported lang="en">Renegociation is supported but it's </negoSupported>
		<negoSupported lang="fr">La renégociation est supportée de façon </negoSupported>
		<SSLVersion lang="en">SSL Version</SSLVersion>
		<SSLVersion lang="fr">Version SSL</SSLVersion>
		<algo lang="en">Algorithm</algo>
		<algo lang="fr">Algorithme</algo>
		<length lang="en">Length (bits)</length>
		<length lang="fr">Longueur (bits)</length>
		<status lang="en">Status</status>
		<status lang="fr">Statut</status>
		<certificate lang="en">Certificate</certificate>
		<certificate lang="fr">Certificat</certificate>
		<supportedAlgos lang="en">Supported algorithms</supportedAlgos>
		<supportedAlgos lang="fr">Algorithmes supportés</supportedAlgos>
		<subject lang="en">Subject</subject>
		<subject lang="fr">Sujet</subject>
		<altName lang="en">Alternative(s) Name(s)</altName>
		<altName lang="fr">Nom(s) alternatif(s)</altName>
		<issuer lang="en">Issuer</issuer>
		<issuer lang="fr">Emetteur du certificat</issuer>
		<signAlgo lang="en">Signature algorithm</signAlgo>
		<signAlgo lang="fr">Algorithme de signature</signAlgo>
		<pkAlgo lang="en">Private key algorithm</pkAlgo>
		<pkAlgo lang="fr">Algorithme chiffrement de la clé</pkAlgo>
		<SN lang="en">Serial number</SN>
		<SN lang="fr">Numéro de série</SN>
		<certVersion lang="en">Certificate version</certVersion>
		<certVersion lang="fr">Version du certificat</certVersion>
		<selfSign lang="en">Self-signed</selfSign>
		<selfSign lang="fr">Auto-signé </selfSign>
		<heartbleed lang="en"> to Heartbleed</heartbleed>
		<heartbleed lang="fr"> à Heartbleed</heartbleed>
		<for lang="en"> for </for>
		<for lang="fr"> en </for>
		<yes lang="en">yes</yes>
		<yes lang="fr">oui</yes>
		<no lang="en">no</no>
		<no lang="fr">non</no>
		<unknown lang="en">unknown</unknown>
		<unknown lang="fr">indeterminé</unknown>
		<preferred lang="en">preferred</preferred>
		<preferred lang="fr">préféré</preferred>
		<accepted lang="en">accepted</accepted>
		<accepted lang="fr">accepté</accepted>
	</my:texts>
	<xsl:variable name="vTexts" select="document('')/*/my:texts"/>


<xsl:template match="/">

<html>
	<head>
		<link href="sslscan.css" rel="stylesheet" type="text/css" />
		<!-- If you want your own Google Font...-->
		<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css' />
	</head>
	<body class='mediawiki skin-janiko'>

	<title>
		<xsl:value-of select="$vTexts/pageTitle[@lang = $pLang]"/>
	</title>

	<!-- Hostname -->
	<h2><xsl:value-of select="document/ssltest/@host"/>:<xsl:value-of select="document/ssltest/@port"/></h2>

	</body>
</html>
</xsl:template>
</xsl:stylesheet>