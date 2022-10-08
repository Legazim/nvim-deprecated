local status_ok, trouble = pcall(require, "telescope")
if not status_ok then
  return
end

trouble.setup()
