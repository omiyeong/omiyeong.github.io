BEGIN;
-- 阿凯：通用员工，后端工程师
INSERT INTO ai_employees (id, organization_id, home_environment_id, runtime, name, role, personality, responsibilities,
  instructions, presence, last_active_at, created_at, updated_at, model, permission_mode, kind, reasoning_effort,
  sandbox_mode, owner_user_id, daemon_state, workspace_ready, activity, activity_detail, business_status)
VALUES ('demo-akai', 'org_demo_niuma0001', 'machine_demo_alexmbp', 'codex', '阿凯', '后端工程师', '', '',
  '负责服务端与数据层实现，改动前先确认调用链路，交付必须附带测试输出。', 'online',
  now() - interval '12 minutes', now() - interval '46 days', now(), 'gpt-5.5', 'default', 'responsive', 'medium',
  'host', 'user_f06fc2fda72d4d3bbc63', 'running', true, 'idle', '', NULL);

-- 小圆：飞书客服模板
INSERT INTO ai_employees (id, organization_id, home_environment_id, runtime, name, role, personality, responsibilities,
  instructions, presence, last_active_at, created_at, updated_at, model, permission_mode, kind, reasoning_effort,
  sandbox_mode, owner_user_id, daemon_state, workspace_ready, activity, activity_detail, template_key,
  template_profile, template_config, template_readiness, business_status)
VALUES ('demo-xiaoyuan', 'org_demo_niuma0001', 'machine_demo_alexmbp', 'claude', '小圆', '飞书售后客服', '', '',
  '', 'online', now() - interval '4 minutes', now() - interval '31 days', now(), 'sonnet', 'default', 'responsive', 'adaptive',
  'container', 'user_f06fc2fda72d4d3bbc63', 'running', true, 'idle', '', 'feishu_customer_service',
  '{"role": "飞书售后客服", "tone": "warm_professional", "work_rules": "只处理售后、保修与换新问题；涉及价格与合同的咨询转人工，不自行承诺赔付。"}'::jsonb,
  '{"scope": "dm", "reply_sink": "direct_reply", "sandbox_mode": "container", "feishu_app_id": "cli_niuma_demo", "has_app_secret": true, "app_display_name": "牛马科技客服", "has_webhook_secret": true}'::jsonb,
  '{"status": "ready", "feishu_bound": true, "skills_injected": true, "user_authorized": true, "steps": [{"id": "credential_check", "status": "passed"}, {"id": "permission_inspector", "status": "passed"}, {"id": "bot_capability", "status": "passed"}, {"id": "platform_permissions", "status": "passed"}, {"id": "connection_check", "status": "passed"}, {"id": "user_auth", "status": "passed"}]}'::jsonb,
  'online');

-- Nova：个人分身
INSERT INTO ai_employees (id, organization_id, home_environment_id, runtime, name, role, personality, responsibilities,
  instructions, presence, last_active_at, created_at, updated_at, model, permission_mode, kind, reasoning_effort,
  sandbox_mode, owner_user_id, daemon_state, workspace_ready, activity, activity_detail, template_key,
  template_profile, template_config, template_readiness, business_status)
VALUES ('demo-nova', 'org_demo_niuma0001', 'machine_demo_alexmbp', 'codex', 'Nova', '测试工程师分身', '', '',
  '', 'online', now() - interval '38 minutes', now() - interval '9 days', now(), 'gpt-5.5', 'default', 'responsive', 'high',
  'host', 'user_f06fc2fda72d4d3bbc63', 'running', true, 'idle', '', 'personal_agent',
  '{"role": "测试工程师分身", "tone": "rigorous_conservative", "work_rules": "先复现再下结论，缺少复现步骤时向提问人反问，不臆测根因。"}'::jsonb,
  '{"trigger": "mention", "sandbox_mode": "host"}'::jsonb,
  '{"status": "trial", "skills_injected": true}'::jsonb,
  'trial');

INSERT INTO organization_members (organization_id, member_type, member_id, role, status, joined_at)
VALUES ('org_demo_niuma0001', 'ai_employee', 'demo-akai', 'member', 'active', now() - interval '46 days'),
       ('org_demo_niuma0001', 'ai_employee', 'demo-xiaoyuan', 'member', 'active', now() - interval '31 days'),
       ('org_demo_niuma0001', 'ai_employee', 'demo-nova', 'member', 'active', now() - interval '9 days');
COMMIT;
