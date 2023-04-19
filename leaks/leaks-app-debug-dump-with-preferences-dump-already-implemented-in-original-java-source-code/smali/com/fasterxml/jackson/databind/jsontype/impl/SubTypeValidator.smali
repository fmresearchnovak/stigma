.class public Lcom/fasterxml/jackson/databind/jsontype/impl/SubTypeValidator;
.super Ljava/lang/Object;
.source "SubTypeValidator.java"


# static fields
.field protected static final DEFAULT_NO_DESER_CLASS_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final PREFIX_C3P0:Ljava/lang/String; = "com.mchange.v2.c3p0."

.field protected static final PREFIX_SPRING:Ljava/lang/String; = "org.springframework."

.field private static final instance:Lcom/fasterxml/jackson/databind/jsontype/impl/SubTypeValidator;


# instance fields
.field protected _cfgIllegalClassNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 35
    .local v0, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "org.apache.commons.collections.functors.InvokerTransformer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v1, "org.apache.commons.collections.functors.InstantiateTransformer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v1, "org.apache.commons.collections4.functors.InvokerTransformer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v1, "org.apache.commons.collections4.functors.InstantiateTransformer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v1, "org.codehaus.groovy.runtime.ConvertedClosure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v1, "org.codehaus.groovy.runtime.MethodClosure"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v1, "org.springframework.beans.factory.ObjectFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v1, "com.sun.org.apache.xalan.internal.xsltc.trax.TemplatesImpl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v1, "org.apache.xalan.xsltc.trax.TemplatesImpl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v1, "com.sun.rowset.JdbcRowSetImpl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v1, "java.util.logging.FileHandler"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v1, "java.rmi.server.UnicastRemoteObject"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v1, "org.springframework.beans.factory.config.PropertyPathFactoryBean"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v1, "org.springframework.aop.config.MethodLocatingFactoryBean"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v1, "org.springframework.beans.factory.config.BeanReferenceFactoryBean"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v1, "org.apache.tomcat.dbcp.dbcp2.BasicDataSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v1, "com.sun.org.apache.bcel.internal.util.ClassLoader"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v1, "org.hibernate.jmx.StatisticsService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v1, "org.apache.ibatis.datasource.jndi.JndiDataSourceFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v1, "org.apache.ibatis.parsing.XPathParser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v1, "jodd.db.connection.DataSourceConnectionProvider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v1, "oracle.jdbc.connector.OracleManagedConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v1, "oracle.jdbc.rowset.OracleJDBCRowSet"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v1, "org.slf4j.ext.EventData"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v1, "flex.messaging.util.concurrent.AsynchBeansWorkManagerExecutor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v1, "com.sun.deploy.security.ruleset.DRSHelper"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v1, "org.apache.axis2.jaxws.spi.handler.HandlerResolverImpl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v1, "org.jboss.util.propertyeditor.DocumentEditor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v1, "org.apache.openjpa.ee.RegistryManagedRuntime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v1, "org.apache.openjpa.ee.JNDIManagedRuntime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v1, "org.apache.openjpa.ee.WASRegistryManagedRuntime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v1, "org.apache.axis2.transport.jms.JMSOutTransportInfo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v1, "com.mysql.cj.jdbc.admin.MiniAdmin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    const-string v1, "ch.qos.logback.core.db.DriverManagerConnectionSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v1, "org.jdom.transform.XSLTransformer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v1, "org.jdom2.transform.XSLTransformer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v1, "net.sf.ehcache.transaction.manager.DefaultTransactionManagerLookup"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v1, "net.sf.ehcache.hibernate.EhcacheJtaTransactionManagerLookup"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v1, "ch.qos.logback.core.db.JNDIConnectionSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    const-string v1, "com.zaxxer.hikari.HikariConfig"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v1, "com.zaxxer.hikari.HikariDataSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v1, "org.apache.cxf.jaxrs.provider.XSLTJaxbProvider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v1, "org.apache.commons.configuration.JNDIConfiguration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v1, "org.apache.commons.configuration2.JNDIConfiguration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v1, "org.apache.xalan.lib.sql.JNDIConnectionPool"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v1, "com.sun.org.apache.xalan.internal.lib.sql.JNDIConnectionPool"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v1, "org.apache.commons.dbcp.cpdsadapter.DriverAdapterCPDS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v1, "org.apache.commons.dbcp.datasources.PerUserPoolDataSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v1, "org.apache.commons.dbcp.datasources.SharedPoolDataSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v1, "com.p6spy.engine.spy.P6DataSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v1, "org.apache.log4j.receivers.db.DriverManagerConnectionSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v1, "org.apache.log4j.receivers.db.JNDIConnectionSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v1, "net.sf.ehcache.transaction.manager.selector.GenericJndiSelector"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v1, "net.sf.ehcache.transaction.manager.selector.GlassfishSelector"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v1, "org.apache.xbean.propertyeditor.JndiConverter"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v1, "org.apache.hadoop.shaded.com.zaxxer.hikari.HikariConfig"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v1, "com.ibatis.sqlmap.engine.transaction.jta.JtaTransactionConfig"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    const-string v1, "br.com.anteros.dbcp.AnterosDBCPConfig"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    const-string v1, "br.com.anteros.dbcp.AnterosDBCPDataSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    const-string v1, "javax.swing.JEditorPane"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v1, "javax.swing.JTextPane"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v1, "org.apache.shiro.realm.jndi.JndiRealmFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    const-string v1, "org.apache.shiro.jndi.JndiObjectFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v1, "org.apache.ignite.cache.jta.jndi.CacheJndiTmLookup"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    const-string v1, "org.apache.ignite.cache.jta.jndi.CacheJndiTmFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v1, "org.quartz.utils.JNDIConnectionProvider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v1, "org.apache.aries.transaction.jms.internal.XaPooledConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v1, "org.apache.aries.transaction.jms.RecoverablePooledConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v1, "com.caucho.config.types.ResourceRef"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v1, "org.aoju.bus.proxy.provider.RmiProvider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v1, "org.aoju.bus.proxy.provider.remoting.RmiProvider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    const-string v1, "org.apache.activemq.ActiveMQConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v1, "org.apache.activemq.ActiveMQXAConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v1, "org.apache.activemq.spring.ActiveMQConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v1, "org.apache.activemq.spring.ActiveMQXAConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v1, "org.apache.activemq.pool.JcaPooledConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v1, "org.apache.activemq.pool.PooledConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v1, "org.apache.activemq.pool.XaPooledConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v1, "org.apache.activemq.jms.pool.XaPooledConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v1, "org.apache.activemq.jms.pool.JcaPooledConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    const-string v1, "org.apache.commons.proxy.provider.remoting.RmiProvider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v1, "org.apache.commons.jelly.impl.Embedded"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v1, "oadd.org.apache.xalan.lib.sql.JNDIConnectionPool"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 193
    const-string v1, "oadd.org.apache.commons.dbcp.cpdsadapter.DriverAdapterCPDS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    const-string v1, "oadd.org.apache.commons.dbcp.datasources.PerUserPoolDataSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    const-string v1, "oadd.org.apache.commons.dbcp.datasources.SharedPoolDataSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    const-string v1, "oracle.jms.AQjmsQueueConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    const-string v1, "oracle.jms.AQjmsXATopicConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    const-string v1, "oracle.jms.AQjmsTopicConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v1, "oracle.jms.AQjmsXAQueueConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v1, "oracle.jms.AQjmsXAConnectionFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    const-string v1, "org.jsecurity.realm.jndi.JndiRealmFactory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    const-string v1, "com.pastdev.httpcomponents.configuration.JndiConfiguration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    const-string v1, "com.nqadmin.rowset.JdbcRowSetImpl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    const-string v1, "org.arrah.framework.rdbms.UpdatableJdbcRowsetImpl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    const-string v1, "org.apache.commons.dbcp2.datasources.PerUserPoolDataSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    const-string v1, "org.apache.commons.dbcp2.datasources.SharedPoolDataSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    const-string v1, "org.apache.commons.dbcp2.cpdsadapter.DriverAdapterCPDS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    const-string v1, "com.newrelic.agent.deps.ch.qos.logback.core.db.JNDIConnectionSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v1, "com.newrelic.agent.deps.ch.qos.logback.core.db.DriverManagerConnectionSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v1, "org.apache.tomcat.dbcp.dbcp.cpdsadapter.DriverAdapterCPDS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v1, "org.apache.tomcat.dbcp.dbcp.datasources.PerUserPoolDataSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v1, "org.apache.tomcat.dbcp.dbcp.datasources.SharedPoolDataSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v1, "org.apache.tomcat.dbcp.dbcp2.cpdsadapter.DriverAdapterCPDS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v1, "org.apache.tomcat.dbcp.dbcp2.datasources.PerUserPoolDataSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v1, "org.apache.tomcat.dbcp.dbcp2.datasources.SharedPoolDataSource"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v1, "com.oracle.wls.shaded.org.apache.xalan.lib.sql.JNDIConnectionPool"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v1, "org.docx4j.org.apache.xalan.lib.sql.JNDIConnectionPool"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/fasterxml/jackson/databind/jsontype/impl/SubTypeValidator;->DEFAULT_NO_DESER_CLASS_NAMES:Ljava/util/Set;

    .line 253
    .end local v0    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/SubTypeValidator;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/SubTypeValidator;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsontype/impl/SubTypeValidator;->instance:Lcom/fasterxml/jackson/databind/jsontype/impl/SubTypeValidator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    sget-object v0, Lcom/fasterxml/jackson/databind/jsontype/impl/SubTypeValidator;->DEFAULT_NO_DESER_CLASS_NAMES:Ljava/util/Set;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/SubTypeValidator;->_cfgIllegalClassNames:Ljava/util/Set;

    .line 255
    return-void
.end method

.method public static instance()Lcom/fasterxml/jackson/databind/jsontype/impl/SubTypeValidator;
    .locals 1

    .line 257
    sget-object v0, Lcom/fasterxml/jackson/databind/jsontype/impl/SubTypeValidator;->instance:Lcom/fasterxml/jackson/databind/jsontype/impl/SubTypeValidator;

    return-object v0
.end method


# virtual methods
.method public validateSubType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)V
    .locals 5
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 264
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 265
    .local v0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "full":Ljava/lang/String;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/SubTypeValidator;->_cfgIllegalClassNames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    goto :goto_1

    .line 276
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 278
    :cond_1
    const-string v2, "org.springframework."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 279
    move-object v2, v0

    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v2, :cond_5

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_5

    .line 280
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "name":Ljava/lang/String;
    const-string v4, "AbstractPointcutAdvisor"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 284
    const-string v4, "AbstractApplicationContext"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 285
    goto :goto_1

    .line 279
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 288
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const-string v2, "com.mchange.v2.c3p0."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 295
    const-string v2, "DataSource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 296
    nop

    .line 302
    :cond_4
    :goto_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v3, "Illegal type (%s) to deserialize: prevented for security reasons"

    invoke-virtual {p1, p3, v3, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-void

    .line 299
    :cond_5
    :goto_2
    return-void
.end method
