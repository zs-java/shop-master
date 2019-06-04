import defaultSettings from '@/settings'

const title = defaultSettings.title || '千鸟店铺管理'

export default function getPageTitle(pageTitle) {
  if (pageTitle) {
    return `${pageTitle} - ${title}`
  }
  return `${title}`
}
