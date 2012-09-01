; Technocrat base Drupal 7 make file.
;
; This is used as a foundation for all Technocrat site builds.
;

api = 2
core = 7.x

;
;
; Core
;
;

projects[drupal] = 7.15

;
;
; Modules
;
;

;
; Contrib
;

; Enable for clients using Acquia Network.
;projects[acquia_connector][version] = "2.7"
;projects[acquia_connector][subdir] = "contrib"

; Drill down admin menu.
projects[admin][version] = "2.0-beta3"
projects[admin][subdir] = "contrib"

; Core site search doesn't scale, we should always use Solr.
projects[apachesolr][version] = "1.0-rc3"
projects[apachesolr][subdir] = "contrib"

; Block as entities, with UUID and services support patches.
;projects[bean][version] = "1.0-rc5+8-dev"
projects[bean][type] = "module"
projects[bean][download][type] = "git"
projects[bean][download][revision] = "6c49e1d"
projects[bean][subdir] = "contrib"

; The CDN module helps improve page load times, even without a CDN.
projects[cdn][version] = "2.5"
projects[cdn][subdir] = "contrib"

; CTools is a dependency for Views and Features.
projects[ctools][version] = "1.2"
projects[ctools][subdir] = "contrib"

; Context for layout management, with a block weight fix.
projects[context][version] = "3.0-beta4"
projects[context][patch][block-reaction-weights][url] = "http://drupal.org/files/context-1439134-undefined_weight_fix-32.patch"
projects[context][patch][block-reaction-weights][md5] = "b4e91b1373a749aa8fa19c8509ef3a80"
projects[context][subdir] = "contrib"

; Most sites need a date field somewhere.
projects[date][version] = "2.3"
projects[date][subdir] = "contrib"

; When enabling revisions, diff is very useful. 3.x supports entity diff.
projects[diff][version] = "3.0-alpha1"
projects[diff][subdir] = "contrib"

; UUID needs Entity API as can most custom modules.
projects[entity][version] = "1.0-rc3"
projects[entity][subdir] = "contrib"

; Entity Reference is the most efficient way to reference entities.
projects[entityreference][version] = "1.0-rc3"
projects[entityreference][subdir] = "contrib"

; Make not found errors more efficient.
projects[fast_404][version] = "1.3"
projects[fast_404][subdir] = "contrib"

; The best way to export configuration in Drupal 7.
projects[features][version] = "1.0"
projects[features][subdir] = "contrib"

; Helper module for building features.
projects[features_orphans][version] = "1.1"
projects[features_orphans][subdir] = "contrib"

; Feeds is great for migating/importing data.
;projects[feeds][version] = "2.0-alpha5"
;projects[feeds][subdir] = "contrib"

; Force timestamp is handy for testing ERS.
;projects[force_timestamp][version] = "1.0-beta1"
;projects[force_timestamp][subdir] = "contrib"

; Prevents duplicate URLs.
projects[globalredirect][version] = "1.5"
projects[globalredirect][subdir] = "contrib"

; Use for multilingual sites.
;projects[i18n][version] = "1.7"
;projects[i18n][subdir] = "contrib"

; Dependency for Feeds
;projects[job_scheduler][version] = "1.0-beta3"
;projects[job_scheduler][subdir] = "contrib"

; Link fields.
projects[link][version] = "1.0"
projects[link][subdir] = "contrib"

; Enable when geographic data is needed.
;projects[location][version] = "3.0-alpha1"
;projects[location][type] = "module"
;projects[location][download][type] = "git"
;projects[location][download][revision] = "81ea777bcd410511cfbcb1dd5831d8cfb0fb2992"
;projects[location][subdir] = "contrib"

; Digital asset management.
projects[media][version] = "1.2"
projects[media][subdir] = "contrib"
projects[media][patch][uuid-support][url] = "http://drupal.org/files/1515788.patch"
projects[media][patch][uuid-support][md5] = "f761f1a134c48e8a40bfbbefacf75237"

; Improved front end for selecting assets.
projects[media_browser_plus][version] = "1.0-beta3"
projects[media_browser_plus][subdir] = "contrib"

; More efficient caching - consider replacing with redis.
projects[memcache][version] = "1.0"
projects[memcache][subdir] = "contrib"

; Most sites need embedded video.
projects[media_youtube][version] = "1.0-beta3"
projects[media_youtube][subdir] = "contrib"

; Lightweight meta tags.
projects[metatags_quick][version] = "2.5"
projects[metatags_quick][subdir] = "contrib"

; Improved module admin page.
projects[module_filter][version] = "1.7"
projects[module_filter][subdir] = "contrib"

; Better UI of nodes in multiple menus.
projects[multiple_node_menu][version] = "1.0-beta1"
projects[multiple_node_menu][subdir] = "contrib"

; SEO friendly URLs.
projects[pathauto][version] = "1.2"
projects[pathauto][subdir] = "contrib"

; Simple health check module.
projects[ping][version] = "1.0-beta1"
projects[ping][subdir] = "contrib"

; Redirects with UUID patch.
projects[redirect][version] = "1.0-beta4"
projects[redirect][subdir] = "contrib"
projects[redirect][patch][uuid-support][url] = "http://drupal.org/files/1517348_0.patch"
projects[redirect][patch][uuid-support][md5] = "e2a9cdd9909211cb78bb60065f3b7423"

; Human friendly usernames.
projects[realname][version] = "1.0"
projects[realname][subdir] = "contrib"

; Restrict access to RSS.
projects[rss_permissions][version] = "1.0-beta1"
projects[rss_permissions][subdir] = "contrib"

; Export variables using features.
projects[strongarm][version] = "2.0"
projects[strongarm][subdir] = "contrib"

; Data placeholders.
projects[token][version] = "1.2"
projects[token][subdir] = "contrib"

; Universally Unique IDentifiers - aka portable entities.
projects[uuid][type] = "module"
projects[uuid][download][type] = "git"
projects[uuid][download][revision] = "4730c67"
projects[uuid][subdir] = "contrib"

; i18n support for variables.
;projects[variable][version] = "2.1"
;projects[variable][subdir] = "contrib"

; Custom data lists.
projects[views][version] = "3.5"
projects[views][subdir] = "contrib"

; WYSIWYG editor with lots of patches include config export to features.
projects[wysiwyg][type] = "module"
projects[wysiwyg][download][type] = "git"
projects[wysiwyg][download][url] = "http://git.drupal.org/project/wysiwyg.git"
projects[wysiwyg][download][revision] = "3e7568e8b8ed077caadcac4dfa147fb394b0b041"
;projects[wysiwyg][download][branch] = "7.x-2.x"
projects[wysiwyg][subdir] = "contrib"

; XML sitemaps to improve spridering.
projects[xmlsitemap][version] = "2.0-rc1"
projects[xmlsitemap][subdir] = "contrib"

;
; Third party git repos
;

; Export translated variables to features.
;projects[fe_variable_i18n][type] = "module"
;projects[fe_variable_i18n][download][type] = "git"
;projects[fe_variable_i18n][download][url] = "git@github.com:liip/fe_variable_i18n.git"
;projects[fe_variable_i18n][download][revision] = "98735f6954ef41c27144c04017a4b68f3768a6ee"
;projects[fe_variable_i18n][subdir] = "git"

;
; Development related tools
;

; Code reviews.
projects[coder][version] = "1.0"
projects[coder][subdir] = "dev"

; Can't develop a site without devel.
projects[devel][version] = "1.3"
projects[devel][subdir] = "dev"

; Avoid confusion about which environment is being used.
projects[environment_indicator][version] = "1.1"
projects[environment_indicator][subdir] = "dev"

;
; Themes
;

; aaaaarr! We need a clean HTML5 base theme.
projects[mothership] = "2.8"

;
; Libraries
;

; CKEditor for WYSIWYG - consider switching Aloha when it stablises.
libraries[ckeditor][download][type]= "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.5.2/ckeditor_3.5.2.tar.gz"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

