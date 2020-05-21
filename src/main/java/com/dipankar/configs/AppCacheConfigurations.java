package com.dipankar.configs;

import net.sf.ehcache.CacheManager;
import net.sf.ehcache.config.CacheConfiguration;
import org.springframework.cache.annotation.CachingConfigurerSupport;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.ehcache.EhCacheCacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;



@Configuration
@EnableCaching
public class AppCacheConfigurations extends CachingConfigurerSupport {

    @Bean
    public net.sf.ehcache.CacheManager ehCacheManager() {
        net.sf.ehcache.config.CacheConfiguration tenSecondsCache =
                new net.sf.ehcache.config.CacheConfiguration();
        tenSecondsCache.setName("ten-sec-cache");
        tenSecondsCache.setMemoryStoreEvictionPolicy("LRU");
        tenSecondsCache.setMaxEntriesLocalHeap(1000);
        tenSecondsCache.setTimeToIdleSeconds(10);

        CacheConfiguration twentySecondsCache = new CacheConfiguration();
        twentySecondsCache.setName("twenty-sec-cache");
        twentySecondsCache.setMemoryStoreEvictionPolicy("LRU");
        twentySecondsCache.setMaxEntriesLocalHeap(1000);
        twentySecondsCache.setTimeToIdleSeconds(20);

        net.sf.ehcache.config.Configuration configuration = new net.sf.ehcache.config.Configuration();
        configuration.addCache(tenSecondsCache);
        configuration.addCache(twentySecondsCache);

        return CacheManager.newInstance(configuration);

    }

    public org.springframework.cache.CacheManager cacheManager() {
        return new EhCacheCacheManager(ehCacheManager());
    }
}
