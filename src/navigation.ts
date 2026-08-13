import { getPermalink } from './utils/permalinks';

export const headerData = {
  links: [
    { text: 'Agent Runtime', href: getPermalink('/runtime') },
    { text: 'AI员工', href: getPermalink('/employees') },
    { text: '办公协作', href: getPermalink('/collaboration') },
    { text: 'Personal Loop', href: getPermalink('/personal-loop') },
    { text: '工程笔记', href: getPermalink('/engineering') },
  ],
  actions: [
    {
      text: 'GitHub',
      href: 'https://github.com/omiyeong',
      target: '_blank',
      icon: 'tabler:brand-github',
    },
  ],
};

export const footerData = {
  links: [
    {
      title: '四个方向',
      links: [
        { text: 'Agent Runtime', href: getPermalink('/runtime') },
        { text: 'AI员工', href: getPermalink('/employees') },
        { text: '办公协作', href: getPermalink('/collaboration') },
        { text: 'Personal Loop', href: getPermalink('/personal-loop') },
      ],
    },
    {
      title: '深入了解',
      links: [
        { text: '工程笔记', href: getPermalink('/engineering') },
        { text: 'GitHub', href: 'https://github.com/omiyeong' },
      ],
    },
  ],
  secondaryLinks: [],
  socialLinks: [{ ariaLabel: 'GitHub', icon: 'tabler:brand-github', href: 'https://github.com/omiyeong' }],
  footNote: `NiuMa · AI Agent 平台工程`,
};
