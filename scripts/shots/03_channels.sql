BEGIN;
INSERT INTO channels (id, name, description, permission_mode, created_at, updated_at, organization_id, autonomy_level, ambient_routing_mode, visibility, is_default)
VALUES
 ('ch_demo_all',    'all',         '全员公告与同步',       'normal', now() - interval '46 days', now(), 'org_demo_niuma0001', 'off',    'intent', 'public', true),
 ('ch_demo_eng',    'engineering', '服务端与 daemon 实现', 'normal', now() - interval '46 days', now(), 'org_demo_niuma0001', 'assist', 'intent', 'public', false),
 ('ch_demo_prod',   'product',     '产品形态与优先级',     'normal', now() - interval '46 days', now(), 'org_demo_niuma0001', 'off',    'intent', 'public', false),
 ('ch_demo_release','release',     '发版与线上问题',       'normal', now() - interval '46 days', now(), 'org_demo_niuma0001', 'off',    'intent', 'public', false);

INSERT INTO channel_memberships (channel_id, member_type, member_id, role, added_at)
SELECT c.id, m.member_type, m.member_id, 'member', now() - interval '46 days'
FROM (VALUES ('ch_demo_all'),('ch_demo_eng'),('ch_demo_prod'),('ch_demo_release')) AS c(id)
CROSS JOIN (VALUES
  ('human','user_f06fc2fda72d4d3bbc63'),
  ('ai_employee','demo-akai'),
  ('ai_employee','demo-xiaoyuan'),
  ('ai_employee','demo-nova')
) AS m(member_type, member_id);
COMMIT;
